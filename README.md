# CMake enabled, LLVM compatible nRF5 SDK

## Contents:
 - [`tools/nrf5-llvm/`](tools/nrf5-llvm/):
   Tools to patch the nRF SDK for the use with LLVM,
   forked from [nrf5-llvm by Emmanuel Blot](https://github.com/eblot/nrf5-llvm).
   These are made available under the MIT license.
 - [`sdk/`](sdk/):
   The Nordic SDK, already patched for use with LLVM,
   minus the two `.msi` installers and the `external_tools` directory.
   These files are mostly copyright by Nordic,
   refer to [`sdk/documentation/licenses.txt`](sdk/documentation/licenses.txt)
   for information about the various licenses in use.
 - [`cmake/`](cmake/):
   CMake files exposing the SDK as a number of libraries,
   trying to follow modern CMake.

## CMake usage documentation

Include the top-level CMakeLists file:
```cmake
add_subdirectory(<path-to-this-README-file>)
```
This will make available a number of cmake functions (see further down for detailed documentation):
 - `nrf_add_image`: Main entry-point, wrapper around `add_executable`,
   handles linker-scripts and conversion to hex (and hopefully soon optional concatenation with softdevice).
   Optionally also includes the SDK.
 - `nrf_add_sdk`: Creates a CMake target (or adds to an existing one) with the requested SDK modules,
   handling dependencies as far as possible.
 - `nrf_get_device_properties`: Helper to determine compilation flags and related properties for some Nordic devices.

### `nrf_add_image`

`nrf_add_image` has the following signature:
```cmake
nrf_add_image(<target_name>
    [ADD_SDK_DIRECTLY]
    DEVICE <device>
    [SOFTDEVICE <softdevice>]
    LINKER_SCRIPT <linker_script>
    [SOURCES <source>...]
    [LINK_FLAGS <flags>...]
    [<extra arguments passed to nrf_add_sdk>...]
)
```
The command creates a new CMake executable target if `<target_name>` is not defined yet,
and adds the sources `<source>...` to it.
It sets the `LINK_FLAGS` property so the `<linker_script>` is loaded
and the proper flags for compilation against a Nordic device of type `<device>` are added.
Extra link flags can be given as `<flags>...`.
If `ADD_SDK_DIRECTLY` is set, the requested SDK sources are added to the target
directly, by invoking `nrf_add_sdk` on the target, passing it any additional args.
See below for more information.
Alternatively, you may invoke `nrf_add_sdk` separately and
call `target_link_libraries` to link the SDK to the image.

Accepted values:
 - `DEVICE <device>`: Any of
   * `nrf52810_xxaa`
   * `nrf52811_xxaa`
   * `nrf52832_xxaa`
   * `nrf52810_xxaa`
 - `SOFTDEVICE <softdevice>`: Any of
   * `nosd`: No softdevice (default)
   * `mbr`: No softdevice, but a master boot record is present
   # `s112`
   # `s132`
   # `s140`

### `nrf_add_sdk`

`nrf_add_sdk` has the following signature:
```cmake
nrf_add_sdk(<target_name>
    [MODULE_LIBRARIES]
    DEVICE <device>
    [SOFTDEVICE <softdevice>]
    CONFIG_PATH <path-to-sdk_config>
    MODULES <module>...
)
```
This command creates a new CMake static library target if `<target_name>` is not defined yet,
and links the requested nRF SDK modules against it.
Specify the list of modules following the `MODULES` keyword.
See below for more information on how to identify modules.
If `MODULE_LIBRARIES` is set, each module with sources gets it's own CMake library target,
named `<target_name>_<module>`.
This is great for localisation of include and link dependencies as well as compile defines,
but creates a lot of clutter in GUIs that cannot hide auxiliary targets.
Without `MODULE_LIBRARIES`, all sources are added directly to `<target_name>`,
while the headers are associated with separate `<target_name>_<module>` interface libraries.
All modules link against the `sdk_config.h` header, whose path needs to be given after `CONFIG_PATH`.
If you need to pass additional compile definitions, add them to the `<target_name>_cfg`
interface target which is also linked by all modules (irrespective if `MODULE_LIBRARIES` is given or not).
For example:
```cmake
target_compile_definitions(<target_name>_cfg INTERFACE
    -DBSP_DEFINES_ONLY
)
target_compile_options(<target_name>_cfg INTERFACE
    -Wall
    -Werror
    -ffunction-sections
    -fdata-sections
    -fno-strict-aliasing
    -fno-builtin
    -fshort-enums
)
```

Accepted values:
 - `DEVICE <device>`: Any of
   * `nrf52810_xxaa`
   * `nrf52811_xxaa`
   * `nrf52832_xxaa`
   * `nrf52810_xxaa`
 - `SOFTDEVICE <softdevice>`: Any of
   * `nosd`: No softdevice (default)
   * `mbr`: No softdevice, but a master boot record is present
   # `s112`
   # `s132`
   # `s140`

#### Module dependencies
This project attempts to map all interdependencies between SDK modules.
In many cases, simply select the modules whose headers you include directly,
and everything should compile.
However, some dependencies are optional and depending on settings in `sdk_config.h`,
which we do not parse at the moment.
In this case, you may need to include additional modules manually.
In any case, search `cmake/modules.cmake` or `cmake/sources.cmake`
for the files that are missing in your compilation to identify the requied modules
(we list the headers as sources as well, for the benefit of GUI and for the purpose of module finding).

Notable components with complex dependencies are:
 - `log`: Practically every SDK module links against `nrf_log.h`,
   which we expose in a module `log_api`, and is typically pulled in automatically.
   If logging is enabled the module `log` needs to be included separately.
   Furthermore, the backends also need to be included manually.
 - `cli`: The CLI is an optional component for many SDK modules.
   It needs to be included manually.
 - `bsp`: The BSP module can be used header-only (module `bsp_api`),
   or with implementation by manually including module `bsp`.
 - `button`: The button module also has `button_api` and `button.`

## Development

### Why this project?
 - Isolates the huge list of include directories and preprocessor defines
   to source files that actually compile against the SDK.
 - Some help on dependency management for the numerous SDK components.
   Ideally, you only specify the SDK components that you actually use
   in your own code and CMake derives the dependencies.

### Branches
 - `nordic`: Contains the unmodified original Nordic nRF5 SDK.
   Downloaded using `tools/download-sdk.sh`
 - `patched`: Contains the SDK patched such that it compiles using llvm.
   Obtained by running `tools/patch-sdk.sh` on a unmodified sdk.
Other branches may contain various modification, extensions and improvements.


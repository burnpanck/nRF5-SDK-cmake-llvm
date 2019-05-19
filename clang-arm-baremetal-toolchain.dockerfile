# run with "docker build -f clang-arm-baremetal-toolchain.dockerfile -t clang-arm-baremetal-toolchain ."
FROM ubuntu:18.04 as build

RUN apt-get -q update && \
	apt-get -q install -y git gcc cmake ninja-build

WORKDIR /home

# 0) Get sources
RUN git clone https://github.com/llvm/llvm-project.git
WORKDIR llvm-project
RUN git checkout llvmorg-8.0.0
WORKDIR ..

# 0.2) get newlib
RUN git clone git://sourceware.org/git/newlib-cygwin.git newlib
WORKDIR newlib
RUN git checkout newlib-3.1.0
WORKDIR ..

# 0.2) alternatively get musl
# RUN git clone git://git.musl-libc.org/musl
# WORKDIR musl
# RUN git checkout v1.1.22
# WORKDIR ..


# 1) choose a folder for the new sysroot
RUN mkdir -p /home/arm-toolchain/armv7em-none-eabi
ENV TARGET_PREFIX /home/arm-toolchain
ENV SYSROOT $TARGET_PREFIX/armv7em-none-eabi

# 2) install libc headers
RUN cp -r newlib/newlib/libc/include ${SYSROOT}/
# alternatively: musl
# RUN cp -r musl/include ${SYSROOT}/

# 3) Build LLVM/Clang
WORKDIR llvm-project
RUN ln -s ../../lld llvm/tools/lld
RUN ln -s ../../clang llvm/tools/clang
RUN ln -s ../../compiler_rt llvm/tools/compiler_rt
RUN mkdir build
WORKDIR build
# explicitly disable Z3: ubuntu provides a too old version, but the CMake script doesn't notice, making the build fail
RUN cmake -GNinja \
    -DBAREMETAL_ARMV7EM_SYSROOT=${SYSROOT} \
    -DBAREMETAL_ARMV7M_SYSROOT=${SYSROOT} \
    -DBAREMETAL_ARMV6M_SYSROOT=${SYSROOT} \
    -C ../llvm/tools/clang/cmake/caches/BaremetalARM.cmake \
    -DCLANG_ANALYZER_ENABLE_Z3_SOLVER=OFF \
    -DCMAKE_INSTALL_PREFIX=$TARGET_PREFIX \
    ../llvm
RUN cmake --build .
WORKDIR ../..

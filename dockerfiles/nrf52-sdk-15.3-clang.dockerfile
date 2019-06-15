# run with "docker build -f nrf52-sdk-15.3-clang.dockerfile -t nrf52-sdk-clang:15.3.0"
FROM ubuntu:18.04 as build

RUN apt-get -q update && \
	apt-get -q install -y wget python3-minimal unzip patch dos2unix

WORKDIR /home

# first, download the SDK
ENV SDK_FILE nRF5_SDK_15.3.0_59ac345
RUN wget -q https://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v15.x.x/${SDK_FILE}.zip
RUN unzip -q ${SDK_FILE}.zip
RUN rm ${SDK_FILE}.zip
# somehow "mv" seems to take forever, so we do "cp && rm"
# RUN mv ${SDK_FILE} nRF5_SDK
RUN cp -r ${SDK_FILE} nRF5_SDK && rm -rf ${SDK_FILE}

# TODO: remove unnecessary items, such as Keil/IAR files, *.msi, examples?, external_tools

# now, patch it
COPY nrfsvc.py nrfpatch.sh *.patch ./
RUN ls
RUN ./nrfsvc.py -uk wrap nRF5_SDK/
RUN ./nrfsvc.py -uk svc nRF5_SDK/components/softdevice
RUN ./nrfpatch.sh -l nRF5_SDK

FROM ubuntu:18.04

# TODO: let's have a bleeding edge clang...
RUN apt-get -q update && \
	apt-get -q install -y git clang cmake ninja-build curl libc6-dev libc6-dev-i386 \
				valgrind ccache distcc && \
	apt-get -q purge -y python python-minimal python2.7-minimal python2.7 cpp gcc manpages manpages-dev sgml-base && apt-get autoremove -y && \
	apt-get -q autoremove -y && \
	apt-get -q clean && \
	rm -rf /var/cache/* /var/lib/apt/* /var/lib/cache/* /var/lib/log/* /tmp/* /var/tmp/*

COPY --from=build /home/nRF5_SDK /nRF5_SDK
# run with docker build -f nRF52-SDK-15.3-clang.dockerfile -t "burnpanck/nrf52-sdk-clang:15.3.0"
FROM ubuntu:18.04 as build

RUN apt-get update && \
	apt-get install -y wget python3-minimal unzip patch dos2unix

WORKDIR /home

# first, download the SDK
ENV SDK_FILE nRF5_SDK_15.3.0_59ac345
RUN wget https://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v15.x.x/${SDK_FILE}.zip
RUN unzip ${SDK_FILE}.zip
RUN rm ${SDK_FILE}.zip
# somehow "mv" seems to take forever, so we do "cp && rm"
# RUN mv ${SDK_FILE} nRF5_SDK
RUN cp -r ${SDK_FILE} nRF5_SDK && rm -rf ${SDK_FILE}

# now, patch it
COPY nrfsvc.py nrfpatch.sh *.patch ./
RUN ls
RUN ./nrfsvc.py -uk wrap nRF5_SDK/
RUN ./nrfsvc.py -uk svc nRF5_SDK/components/softdevice
RUN ./nrfpatch.sh -l nRF5_SDK

FROM ubuntu:18.04

# TODO: let's have a bleeding edge clang...
RUN apt-get update && \
	apt-get install -y git clang cmake ninja-build curl libc6-dev libc6-dev-i386 \
				valgrind ccache distcc && \
	apt-get purge -y python python-minimal python2.7-minimal python2.7 cpp gcc manpages manpages-dev sgml-base && apt-get autoremove -y && \
	apt-get autoremove -y && \
	apt-get clean && \
	rm -rf /var/cache/* /var/lib/apt/* /var/lib/cache/* /var/lib/log/* /tmp/* /var/tmp/*

COPY --from=build /home/nRF5_SDK /nRF5_SDK
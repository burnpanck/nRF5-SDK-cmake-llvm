# run with "docker build -f homebrew-arm-toolchain.dockerfile -t homebrew-arm-toolchain ."
FROM ubuntu:18.04

RUN apt-get -q update && \
	apt-get -q install -y build-essential curl file git


#RUN USER=test sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
RUN git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew \
    && mkdir ~/.linuxbrew/bin \
    && ln -s ../Homebrew/bin/brew ~/.linuxbrew/bin
RUN eval $(~/.linuxbrew/bin/brew shellenv) \
    && brew tap eblot/armeabi \
    && brew install arm-none-eabi-llvm armv7em-cortex-m4f
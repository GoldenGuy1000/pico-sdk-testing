FROM debian:bookworm

RUN mkdir project
WORKDIR /project

RUN apt-get update

# ENV PATH="${PATH}:/root/.platformio/penv/bin"

# https://pip-assets.raspberrypi.com/categories/610-raspberry-pi-pico/documents/RP-008276-DS-1-getting-started-with-pico.pdf page 32
RUN apt-get install -y cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential
RUN apt-get install -y g++ libstdc++-arm-none-eabi-newlib
# also needed
RUN apt-get install -y python3
RUN apt-get install -y python3-venv
RUN apt-get install -y curl
RUN apt-get install -y sudo
RUN curl https://raw.githubusercontent.com/raspberrypi/pico-setup/master/pico_setup.sh | bash

ENV PICO_SDK_PATH="/project/pico-sdk"


ENTRYPOINT ["bash"] # Useful for debugging

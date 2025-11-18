To start, I used [The Pico Docs](https://pip-assets.raspberrypi.com/categories/610-raspberry-pi-pico/documents/RP-008276-DS-1-getting-started-with-pico.pdf?disposition=inline) page 32 setup

- ^ Cloning the pico sdk, pico examples, and pico extras -- not sure how necessary all of these are
- Later the pico sdk will be moved inside the container but for now clone it yourself
- I also edited `/pico-sdk/src/boards/include/boards/pico.h` to be the rp2350 to make the build work correctly (it is set to rp2040 by default)
- & hint: try 'git submodule update --init' from your SDK directory for USB stuff

# Building the container

```sh
podman build -t pico-build-container .
```

# Running the container

```sh
podman run --rm -v ~/Dev/Robosub/pico-sdk-testing:/project/pico:Z -it pico-build-container
```

# Building examples

Roughly:

```bash
cd /project/pico/pico-examples
mkdir build
cd build
cmake ..
cd hello_world
make hello_world
```

Then the .uf2 file in a subdirectory of `hello_world` is what you want to put on the rp2350

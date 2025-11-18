To start, I used [The Pico Docs](https://pip-assets.raspberrypi.com/categories/610-raspberry-pi-pico/documents/RP-008276-DS-1-getting-started-with-pico.pdf?disposition=inline) page 32 setup

I also edited `/pico-sdk/src/boards/include/boards/pico.h` to be the rp2350 to make the build work correctly
(by default it's rp2040, maybe there is a branch I should be checking out when git cloning)

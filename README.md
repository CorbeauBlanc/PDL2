# PDL2 (Ponified DirectMedia Layer 2)
A simplistic interface to use the SDL2 (along with SDL_image and SDL_ttf) with ponylang


## What the hell is this?
This is a small pony package that's meant to simplify the use of the SDL2 library in any pony application you want to make. I did not recreate the lib, I simply wrapped all the FFI calls into one package and adapted them for ponylang types and functions. You can see this as a simple translation between two languages.

## Why does it exist?
Because FFI calls are ugly and a lot of C concepts are a real pain in the a** to translate into pony. Like C unions for example, and SDL_Events _are_ C unions.

## K. How does it work?
The installation is pretty easy. First you need to install the SDL2 (http://wiki.libsdl.org/Installation). Then copy the PDL2 folder at the root of your project and you can include it with `use "PDL2"`

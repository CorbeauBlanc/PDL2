# PDL2 (Ponified DirectMedia Layer 2)
A simplistic interface to use the SDL2 (along with SDL2_image and SDL2_ttf) with ponylang


## What the hell is this?
This is a small pony package that's meant to simplify the use of the SDL2 library in any pony application you want to make. I did not recreate the lib, nor did I make new pony classes for each SDL2 element, I simply wrapped all the FFI calls into one primitive and adapted them for ponylang types and functions. You can see this as a simple translation between two languages. Not all the functions are implemented currently, only the basics, but I will add more in the future

## Why does it exist?
Because FFI calls are ugly and a lot of C concepts are a real pain in the a** to translate into pony. Like C unions for example, and SDL_Events _are_ C unions.

## K. How does it work?
The installation is pretty easy. First you need to install the SDL2 (http://wiki.libsdl.org/Installation) along with SDL2_image (https://www.libsdl.org/projects/SDL_image/) and SDL2_ttf (https://www.libsdl.org/projects/SDL_ttf/).
Then a simple `make` will do just fine. You can also build and install the SDL2 + SDL2_image + SDL2_ttf from their sources with `make dependencies` or separately with `make libsdl2` `make libsdl2_image` `make libsdl2_ttf` `make libccaster`.
Everything you'll need will be contained in "build/PDL2-#.#.#", include it in your code with `use` like any other pony package.

(currently no docs or wiki cuz I don't have time to do them so you'll have to look at the sources from here, sry. The primitive is named `SDL` and is declared in "SDL.pony")

## Additional notes
Please keep in mind that this is my very first project in ponylang, so things might not be very well done. They should improve over time though as I learn more about the language. This is just a way to have a basic interface to work with and make the learning easier.

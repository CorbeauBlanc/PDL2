use "collections"
use "strings"
use "lib:SDL2"
use "../"

use @TTF_RenderText_Solid[SDLSurface](font: TTFFont, text: Pointer[U8] tag, fg: SDLColor)
use @TTF_RenderUTF8_Solid[SDLSurface](font: TTFFont, text: Pointer[U8] tag, fg: SDLColor)
use @TTF_RenderUNICODE_Solid[SDLSurface](font: TTFFont, text: Pointer[U16] tag, fg: SDLColor)
use @TTF_RenderGlyph_Solid[SDLSurface](font: TTFFont, text: U16, fg: SDLColor)

use @TTF_RenderText_Shaded[SDLSurface](font: TTFFont, text: Pointer[U8] tag, fg: SDLColor, bg: SDLColor)
use @TTF_RenderUTF8_Shaded[SDLSurface](font: TTFFont, text: Pointer[U8] tag, fg: SDLColor, bg: SDLColor)
use @TTF_RenderUNICODE_Shaded[SDLSurface](font: TTFFont, text: Pointer[U16] tag, fg: SDLColor, bg: SDLColor)
use @TTF_RenderGlyph_Shaded[SDLSurface](font: TTFFont, text: U16, fg: SDLColor, bg: SDLColor)

use @TTF_RenderText_Blended[SDLSurface](font: TTFFont, text: Pointer[U8] tag, fg: SDLColor)
use @TTF_RenderUTF8_Blended[SDLSurface](font: TTFFont, text: Pointer[U8] tag, fg: SDLColor)
use @TTF_RenderUNICODE_Blended[SDLSurface](font: TTFFont, text: Pointer[U16] tag, fg: SDLColor)
use @TTF_RenderGlyph_Blended[SDLSurface](font: TTFFont, text: U16, fg: SDLColor)

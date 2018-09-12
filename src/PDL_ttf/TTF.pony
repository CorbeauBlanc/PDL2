use "collections"
use "strings"
use "lib:SDL2"
use "lib:SDL_ttf"

use @TTF_Init[I32]()
use @TTF_WasInit[I32]()
use @TTF_Quit[None]()


primitive TTF

	fun init(): I32 =>
		@TTF_Init()

	fun wasInit(): I32 =>
		@TTF_WasInit()

	fun quit() =>
		@TTF_Quit()

	fun openFont(file: String val, ptsize: I32): TTFFont =>
		@TTF_OpenFont(file.cstring(), ptsize)

	fun openFontIndex(file: String val, ptsize: I32, index: I64): TTFFont =>
		@TTF_OpenFontIndex(file.cstring(), ptsize, index)

	fun getFontStyle(font: TTFFont): (I32 | None) =>
		if not font.is_null() then
			@TTF_GetFontStyle(font)
		end

	fun setFontStyle(font: TTFFont, style: TTFFlag) =>
		if not font.is_null() then
			@TTF_SetFontStyle(font, style())
		end

	fun getFontOutline(font: TTFFont): (I32 | None) =>
		if not font.is_null() then
			@TTF_GetFontOutline(font)
		end

	fun setFontOutline(font: TTFFont, outline: I32) =>
		if not font.is_null() then
			@TTF_SetFontOutline(font, outline)
		end

	fun getFontHinting(font: TTFFont): (I32 | None) =>
		if not font.is_null() then
			@TTF_GetFontHinting(font)
		end

	fun setFontHinting(font: TTFFont, hinting: TTFFlag) =>
		if not font.is_null() then
			@TTF_SetFontHinting(font, hinting())
		end

	fun getFontKerning(font: TTFFont): (Bool | None) =>
		if not font.is_null() then
			@TTF_GetFontKerning(font) != 0
		end

	fun setFontKerning(font: TTFFont, allowed: Bool) =>
		if not font.is_null() then
			@TTF_SetFontKerning(font, if allowed then 1 else 0 end)
		end

	fun fontHeight(font: TTFFont): (I32 | None) =>
		if not font.is_null() then
			@TTF_FontHeight(font)
		end

	fun fontAscent(font: TTFFont): (I32 | None) =>
		if not font.is_null() then
			@TTF_FontAscent(font)
		end

	fun fontDescent(font: TTFFont): (I32 | None) =>
		if not font.is_null() then
			@TTF_FontDescent(font)
		end

	fun fontLineSkip(font: TTFFont): (I32 | None) =>
		if not font.is_null() then
			@TTF_FontLineSkip(font)
		end

	fun fontFaceIsFixedWidth(font: TTFFont): (Bool | None) =>
		if not font.is_null() then
			@TTF_FontFaceIsFixedWidth(font) != 0
		end

	fun fontFaceFamilyName(font: TTFFont): (String | None) =>
		if not font.is_null() then
			recover String.from_cstring(@TTF_FontFaceFamilyName(font)) end
		end

	fun fontFaceStyleName(font: TTFFont): (String | None) =>
		if not font.is_null() then
			recover String.from_cstring(@TTF_FontFaceStyleName(font)) end
		end

	fun renderTextSolid(font: TTFFont, text: String, fg: SDLColor): SDLSurface =>
		if not font.is_null() then
			@TTF_RenderText_Solid(font, text.cstring(), fg)
		else
			SDLSurface.none()
		end

	fun renderUTF8Solid(font: TTFFont, text: String, fg: SDLColor): SDLSurface =>
	if not font.is_null() then
		@TTF_RenderUTF8_Solid(font, text.cstring(), fg)
	else
		SDLSurface.none()
	end

	fun renderUNICODESolid(font: TTFFont, text: Array[U16], fg: SDLColor): SDLSurface =>
		if not font.is_null() then
			@TTF_RenderUNICODE_Solid(font, text.cpointer(), fg)
		else
			SDLSurface.none()
		end

	fun renderGlyphSolid(font: TTFFont, text: U16, fg: SDLColor): SDLSurface =>
		if not font.is_null() then
			@TTF_RenderGlyph_Solid(font, text, fg)
		else
			SDLSurface.none()
		end

	fun renderTextShaded(font: TTFFont, text: String, fg: SDLColor, bg: SDLColor): SDLSurface =>
		if not font.is_null() then
			@TTF_RenderText_Shaded(font, text.cstring(), fg, bg)
		else
			SDLSurface.none()
		end

	fun renderUTF8Shaded(font: TTFFont, text: String, fg: SDLColor, bg: SDLColor): SDLSurface =>
		if not font.is_null() then
			@TTF_RenderUTF8_Shaded(font, text.cstring(), fg, bg)
		else
			SDLSurface.none()
		end

	fun renderUNICODEShaded(font: TTFFont, text: Array[U16], fg: SDLColor, bg: SDLColor): SDLSurface =>
		if not font.is_null() then
			@TTF_RenderUNICODE_Shaded(font, text.cpointer(), fg, bg)
		else
			SDLSurface.none()
		end

	fun renderGlyphShaded(font: TTFFont, text: U16, fg: SDLColor, bg: SDLColor): SDLSurface =>
		if not font.is_null() then
			@TTF_RenderGlyph_Shaded(font, text, fg, bg)
		else
			SDLSurface.none()
		end

	fun renderTextBlended(font: TTFFont, text: String, fg: SDLColor): SDLSurface =>
		if not font.is_null() then
			@TTF_RenderText_Blended(font, text.cstring(), fg)
		else
			SDLSurface.none()
		end

	fun renderUTF8Blended(font: TTFFont, text: String, fg: SDLColor): SDLSurface =>
	if not font.is_null() then
		@TTF_RenderUTF8_Blended(font, text.cstring(), fg)
	else
		SDLSurface.none()
	end

	fun renderUNICODEBlended(font: TTFFont, text: Array[U16], fg: SDLColor): SDLSurface =>
		if not font.is_null() then
			@TTF_RenderUNICODE_Blended(font, text.cpointer(), fg)
		else
			SDLSurface.none()
		end

	fun renderGlyphBlended(font: TTFFont, text: U16, fg: SDLColor): SDLSurface =>
		if not font.is_null() then
			@TTF_RenderGlyph_Blended(font, text, fg)
		else
			SDLSurface.none()
		end

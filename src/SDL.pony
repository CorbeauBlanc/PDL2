use "collections"
use "strings"
use "lib:SDL2"

use @SDL_Delay[None](ms: U32)
use @SDL_GetError[Pointer[U8]]()
use @SDL_Init[I32](flags: U32 tag)
use @SDL_Quit[None]()


primitive SDL

	fun allocFormat(pixel_format: U32): SDLPixelFormat =>
		@SDL_AllocFormat(pixel_format)

	fun blitSurface(src: SDLSurface, srcrect: SDLPtrRect, dst: SDLSurface, dstrect: SDLPtrRect): I32 =>
		@SDL_UpperBlit(src, srcrect, dst, dstrect)

	fun createRenderer(window: SDLWindow, index: I32, flags: SDLFlag val): SDLRenderer =>
		@SDL_CreateRenderer(window, index, flags())

	fun createRGBSurface(width: I32, height: I32, depth: I32,
												rMask: U32, gMask: U32, bMask: U32, aMask: U32): SDLSurface =>
		@SDL_CreateRGBSurface(0, width, height, depth, rMask, gMask, bMask, aMask)

	fun createTexture(renderer: SDLRenderer, format: U32, access: U32, w: I32, h: I32): SDLTexture =>
		@SDL_CreateTexture(renderer, format, access, w, h)

	fun createTextureFromSurface(renderer: SDLRenderer, surface: SDLSurface): SDLTexture =>
		@SDL_CreateTextureFromSurface(renderer, surface)

	fun createWindow(title: String val, x: I32, y: I32, w: I32, h: I32, flags: SDLFlag val): SDLWindow =>
		@SDL_CreateWindow(title.cstring(), x, y, w, h, flags())

	fun delay(ms: U32) =>
		@SDL_Delay(ms)

	fun destroyRenderer(renderer: SDLRenderer) =>
		@SDL_DestroyRenderer(renderer)

	fun destroyTexture(texture: SDLTexture) =>
		@SDL_DestroyTexture(texture)

	fun destroyWindow(window: SDLWindow) =>
		@SDL_DestroyWindow(window)

	fun fillRect(dst: SDLSurface, rect: SDLPtrRect, color: U32): I32 =>
		@SDL_FillRect(dst, rect, color)

	fun freeFormat(format: SDLPixelFormat) =>
		@SDL_FreeFormat(format)

	fun freeSurface(surface: SDLSurface) =>
		@SDL_FreeSurface(surface)

	fun getError(): String val =>
		recover String.from_cstring(@SDL_GetError()) end

	fun getWindowPixelFormat(window: SDLWindow): U32 =>
		@SDL_GetWindowPixelFormat(window)

	fun getWindowSurface(window: SDLWindow): SDLSurface =>
		@SDL_GetWindowSurface(window)

	fun hideWindow(window: SDLWindow) =>
		@SDL_HideWindow(window)

	fun init(flags: SDLFlag val): I32 =>
		@SDL_Init(flags())

	fun loadBMP(file: String val): SDLSurface =>
		let mode: String = "rb"
		@SDL_LoadBMP_RW(@SDL_RWFromFile(file.cstring(), mode.cstring()), 1)

	fun lockSurface(surface: SDLSurface) =>
		@SDL_LockSurface(surface)

	fun mapRGB(format: SDLPixelFormat, r: U8, g: U8, b:U8): U32 =>
		@SDL_MapRGB(format, r, g, b)

	fun mapRGBA(format: SDLPixelFormat, r: U8, g: U8, b:U8, a: U8): U32 =>
		@SDL_MapRGBA(format, r, g, b, a)

	fun maximizeWindow(window: SDLWindow) =>
		@SDL_MaximizeWindow(window)

	fun minimizeWindow(window: SDLWindow) =>
		@SDL_MinimizeWindow(window)

	fun quit() =>
		@SDL_Quit()

	fun raiseWindow(window: SDLWindow) =>
		@SDL_RaiseWindow(window)

	fun renderClear(renderer: SDLRenderer): I32 =>
		@SDL_RenderClear(renderer)

	fun renderCopy(renderer: SDLRenderer, texture: SDLTexture,
											srcrect: SDLPtrRect, dstrect: SDLPtrRect): I32 =>
		@SDL_RenderCopy(renderer, texture, srcrect, dstrect)

	fun renderCopyEx(renderer: SDLRenderer, texture: SDLTexture,
											srcrect: SDLPtrRect, dstrect: SDLPtrRect, angle: F64,
											center: SDLPtrPoint, flip: SDLFlag): I32 =>
		@SDL_RenderCopyEx(renderer, texture, srcrect, dstrect, angle, center, flip())

	fun renderPresent(renderer: SDLRenderer) =>
		@SDL_RenderPresent(renderer)

	fun restoreWindow(window: SDLWindow) =>
		@SDL_RestoreWindow(window)

	fun setClipRect(surface: SDLSurface, rect: SDLRect): Bool =>
		if @SDL_SetClipRect(surface, rect) == 1 then
			true
		else
			false
		end

	fun setRenderDrawColor(renderer: SDLRenderer,
													r: U8, g: U8, b:U8, a: U8): I32 =>
		@SDL_SetRenderDrawColor(renderer, r, g, b, a)

	fun setSurfaceAlphaMod(surface: SDLSurface, alpha: U8) =>
		@SDL_SetSurfaceAlphaMod(surface, alpha)

	fun setSurfaceBlendMode(surface: SDLSurface, blendMode: SDLFlag) =>
		@SDL_SetSurfaceBlendMode(surface, blendMode())

	fun setSurfaceColorMod(surface: SDLSurface, r: U8, g: U8, b: U8) =>
		@SDL_SetSurfaceColorMod[I32](surface, r, g, b)

	fun setSurfaceRLE(surface: SDLSurface, flag: Bool): I32 =>
		@SDL_SetSurfaceRLE(surface, if flag then 1 else 0 end)

	fun setTextureAlphaMod(texture: SDLTexture, alpha: U8): I32 =>
		@SDL_SetTextureAlphaMod(texture, alpha)

	fun setTextureBlendMode(texture: SDLTexture, blendMode: SDLFlag) =>
		@SDL_SetTextureBlendMode(texture, blendMode())

	fun setTextureColorMod(texture: SDLTexture, r: U8, g: U8, b: U8) =>
		@SDL_SetTextureColorMod(texture, r, g, b)

	fun setWindowFullscreen(window: SDLWindow, flags: SDLFlag) =>
		@SDL_SetWindowFullscreen(window, flags())

	fun setWindowPosition(window: SDLWindow, x: I32, y: I32) =>
		@SDL_SetWindowPosition(window, x, y)

	fun setWindowSize(window: SDLWindow, w: I32, h: I32) =>
		@SDL_SetWindowSize(window, w, h)

	fun showWindow(window: SDLWindow) =>
		@SDL_ShowWindow(window)

	fun unlockSurface(surface: SDLSurface) =>
		@SDL_UnlockSurface(surface)

	fun pollEvent(event: MaybePointer[SDLEvent]): I32 =>
		@SDL_PollEvent(event)

	fun waitEvent(event: MaybePointer[SDLEvent]): I32 =>
		@SDL_WaitEvent(event)

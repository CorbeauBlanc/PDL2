use "collections"

use @SDL_CreateTexture[SDLTexture](renderer: SDLRenderer, format: U32, access: U32, w: I32, h: I32)
use @SDL_CreateTextureFromSurface[SDLTexture](renderer: SDLRenderer, surface: SDLSurface)
use @SDL_DestroyRenderer[None](renderer: SDLRenderer)
use @SDL_DestroyTexture[None](texture: SDLTexture)
use @SDL_RenderClear[I32](renderer: SDLRenderer)
use @SDL_RenderCopy[I32](renderer: SDLRenderer, texture: SDLTexture, rcrect: SDLPtrRect, dstrect: SDLPtrRect)
use @SDL_RenderCopyEx[I32](renderer: SDLRenderer, texture: SDLTexture, srcrect: SDLPtrRect, dstrect: SDLPtrRect, angle: F64, center: SDLPtrPoint, flip: U32)
use @SDL_RenderPresent[None](renderer: SDLRenderer)
use @SDL_SetRenderDrawColor[I32](renderer: SDLRenderer, r: U8, g: U8, b:U8, a: U8)
use @SDL_SetTextureAlphaMod[I32](texture: SDLTexture, alpha: U8)
use @SDL_SetTextureBlendMode[I32](texture: SDLTexture, blendMode: U32)
use @SDL_SetTextureColorMod[I32](texture: SDLTexture,r: U8, g: U8, b: U8)


primitive _Renderer
type SDLRenderer is Pointer[_Renderer]

primitive RENDERERSOFTWARE is SDLFlag
	fun apply(): U32 => 0x00000001
primitive RENDERERACCELERATED is SDLFlag
	fun apply(): U32 => 0x00000002
primitive RENDERERPRESENTVSYNC is SDLFlag
	fun apply(): U32 => 0x00000004
primitive RENDERERTARGETTEXTURE is SDLFlag
	fun apply(): U32 => 0x00000008

primitive FLIPNONE is SDLFlag
	fun apply(): U32 => 0x00000000
primitive FLIPHORIZONTAL is SDLFlag
	fun apply(): U32 => 0x00000001
primitive FLIPVERTICAL is SDLFlag
	fun apply(): U32 => 0x00000002


primitive _Texture
type SDLTexture is Pointer[_Texture]

primitive TEXTUREACCESSSTATIC is SDLFlag
	fun apply(): U32 => 0
primitive TEXTUREACCESSSTREAMING is SDLFlag
	fun apply(): U32 => 1
primitive TEXTUREACCESSTARGET is SDLFlag
	fun apply(): U32 => 2

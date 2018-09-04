use "collections"

use @SDL_UpperBlit[I32](src: SDLSurface, srcrect: SDLPtrRect, dst: SDLSurface, dstrect: SDLPtrRect)
use @SDL_CreateRenderer[SDLRenderer](window: SDLWindow, index: I32, flags: U32)
use @SDL_CreateRGBSurface[SDLSurface](flags: U32, width: I32, height: I32, depth: I32, rMask: U32, gMask: U32, bMask: U32, aMask: U32)
use @SDL_FillRect[I32](dst: SDLSurface, rect: SDLPtrRect, color: U32)
use @SDL_FreeSurface[None](surface: SDLSurface)
use @SDL_GetClipRect[None](surface: SDLSurface, rect: SDLRect)
use @SDL_LoadBMP_RW[SDLSurface](src: SDLRWops, freesrc: I32)
use @SDL_LockSurface[I32](surface: SDLSurface)
use @SDL_RWFromFile[SDLRWops](file: Pointer[U8] tag, mode: Pointer[U8] tag)
use @SDL_RestoreWindow[None](window: SDLWindow)
use @SDL_SetClipRect[U8](surface: SDLSurface, rect: SDLRect)
use @SDL_SetSurfaceAlphaMod[I32](surface: SDLSurface, alpha: U8)
use @SDL_SetSurfaceBlendMode[I32](surface: SDLSurface, blendMode: U32)
use @SDL_SetSurfaceColorMod[I32](surface: SDLSurface, r: U8, g: U8, b: U8)
use @SDL_SetSurfaceRLE[I32](surface: SDLSurface, flag: I32)
use @SDL_UnlockSurface[I32](surface: SDLSurface)


primitive _SDLRect
struct SDLRect
	var x: I32 = 0
	var y: I32 = 0
	var w: I32 = 0
	var h: I32 = 0
	new create(x': I32, y': I32, w': I32, h': I32) =>
		x = x'
		y = y'
		w = w'
		h = h'

type SDLPtrRect is MaybePointer[SDLRect]

primitive _SDLPoint
struct SDLPoint
	var x: I32 = 0
	var y: I32 = 0
type SDLPtrPoint is MaybePointer[SDLPoint]

primitive _BlitMap
primitive _Surface
struct Surface
	var _flags: U32 = 0
	var format: Pointer[_PixelFormat] box = Pointer[_PixelFormat]
	var w: I32 box = 0
	var h: I32 box = 0
	var pitch: I32 box = 0
	var pixels: Pointer[U8] = Pointer[U8]
	var userdata: Pointer[U8] = Pointer[U8]
	var _locked: I32 = 0
	var _lock_data: Pointer[U8] = Pointer[U8]
	var clip_rect: Pointer[_SDLRect] = Pointer[_SDLRect]
	var _map: Pointer[_BlitMap] = Pointer[_BlitMap]
	var refcount: I32 = 0

type SDLPtrSurface is Pointer[_Surface]
type SDLSurface is MaybePointer[Surface]

primitive _SDLRWops
type SDLRWops is Pointer[_SDLRWops]

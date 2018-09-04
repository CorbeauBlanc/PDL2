use "collections"
use "strings"

use @SDL_CreateWindow[SDLWindow](title: Pointer[U8] tag, x: I32, y: I32, w: I32, h: I32, flags: U32)
use @SDL_DestroyWindow[None](window: SDLWindow)
use @SDL_GetWindowSurface[SDLSurface](window: SDLWindow)
use @SDL_HideWindow[None](window: SDLWindow)
use @SDL_MaximizeWindow[None](window: SDLWindow)
use @SDL_MinimizeWindow[None](window: SDLWindow)
use @SDL_RaiseWindow[None](window: SDLWindow)
use @SDL_SetWindowFullscreen[I32](window: SDLWindow, flags: U32)
use @SDL_SetWindowPosition[None](window: SDLWindow, x: I32, y: I32)
use @SDL_SetWindowSize[None](window: SDLWindow, w: I32, h: I32)
use @SDL_ShowWindow[None](window: SDLWindow)


primitive _Window
type SDLWindow is Pointer[_Window]

/*
	Window flags
*/
primitive WFULLSCREEN is SDLFlag
	fun apply(): U32 => 0x00000001
primitive WOPENGL is SDLFlag
	fun apply(): U32 => 0x00000002
primitive WSHOWN is SDLFlag
	fun apply(): U32 => 0x00000004
primitive WHIDDEN is SDLFlag
	fun apply(): U32 => 0x00000008
primitive WBORDERLESS is SDLFlag
	fun apply(): U32 => 0x00000010
primitive WRESIZABLE is SDLFlag
	fun apply(): U32 => 0x00000020
primitive WMINIMIZED is SDLFlag
	fun apply(): U32 => 0x00000040
primitive WMAXIMIZED is SDLFlag
	fun apply(): U32 => 0x00000080
primitive WINPUTGRABBED is SDLFlag
	fun apply(): U32 => 0x00000100
primitive WINPUTFOCUS is SDLFlag
	fun apply(): U32 => 0x00000200
primitive WMOUSEFOCUS is SDLFlag
	fun apply(): U32 => 0x00000400
primitive WFULLSCREENDESKTOP is SDLFlag
	fun apply(): U32 => WFULLSCREEN() or 0x00001000
primitive WFOREIGN is SDLFlag
	fun apply(): U32 => 0x00000800
primitive WALLOWHIGHDPI is SDLFlag
	fun apply(): U32 => 0x00002000
primitive WMOUSECAPTURE is SDLFlag
	fun apply(): U32 => 0x00004000
primitive WALWAYSONTOP is SDLFlag
	fun apply(): U32 => 0x00008000
primitive WSKIPTASKBAR is SDLFlag
	fun apply(): U32 => 0x00010000
primitive WUTILITY is SDLFlag
	fun apply(): U32 => 0x00020000
primitive WTOOLTIP is SDLFlag
	fun apply(): U32 => 0x00040000
primitive WPOPUPMENU is SDLFlag
	fun apply(): U32 => 0x00080000

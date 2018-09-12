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
primitive WINDOWFULLSCREEN is SDLFlag
	fun apply(): U32 => 0x00000001
primitive WINDOWOPENGL is SDLFlag
	fun apply(): U32 => 0x00000002
primitive WINDOWSHOWN is SDLFlag
	fun apply(): U32 => 0x00000004
primitive WINDOWHIDDEN is SDLFlag
	fun apply(): U32 => 0x00000008
primitive WINDOWBORDERLESS is SDLFlag
	fun apply(): U32 => 0x00000010
primitive WINDOWRESIZABLE is SDLFlag
	fun apply(): U32 => 0x00000020
primitive WINDOWMINIMIZED is SDLFlag
	fun apply(): U32 => 0x00000040
primitive WINDOWMAXIMIZED is SDLFlag
	fun apply(): U32 => 0x00000080
primitive WINDOWINPUTGRABBED is SDLFlag
	fun apply(): U32 => 0x00000100
primitive WINDOWINPUTFOCUS is SDLFlag
	fun apply(): U32 => 0x00000200
primitive WINDOWMOUSEFOCUS is SDLFlag
	fun apply(): U32 => 0x00000400
primitive WINDOWFULLSCREENDESKTOP is SDLFlag
	fun apply(): U32 => WINDOWFULLSCREEN() or 0x00001000
primitive WINDOWFOREIGN is SDLFlag
	fun apply(): U32 => 0x00000800
primitive WINDOWALLOWHIGHDPI is SDLFlag
	fun apply(): U32 => 0x00002000
primitive WINDOWMOUSECAPTURE is SDLFlag
	fun apply(): U32 => 0x00004000
primitive WINDOWALWAYSONTOP is SDLFlag
	fun apply(): U32 => 0x00008000
primitive WINDOWSKIPTASKBAR is SDLFlag
	fun apply(): U32 => 0x00010000
primitive WINDOWUTILITY is SDLFlag
	fun apply(): U32 => 0x00020000
primitive WINDOWTOOLTIP is SDLFlag
	fun apply(): U32 => 0x00040000
primitive WINDOWPOPUPMENU is SDLFlag
	fun apply(): U32 => 0x00080000

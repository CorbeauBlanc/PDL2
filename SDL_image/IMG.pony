use "collections"
use "strings"
use "lib:SDL_image"
use "../"


use @IMG_Init[I32](flags: U32)
use @IMG_Quit[None]()

interface IMGFlag
	fun apply(): U32
	fun op_or(other: IMGFlag val): IMGFlag val =>
		recover UdefIMGFlag(this.apply() or other()) end
	fun op_and(other: IMGFlag val): IMGFlag val =>
		recover UdefIMGFlag(this.apply() and other()) end
	fun op_xor(other: IMGFlag val): IMGFlag val =>
		recover UdefIMGFlag(this.apply() xor other()) end

class UdefIMGFlag is IMGFlag
	var _val: U32
	new create(value: U32) => _val = value
	fun apply(): U32 => _val

primitive IMGINITJPG is IMGFlag
	fun apply(): U32 => 1
primitive IMGINITPNG is IMGFlag
	fun apply(): U32 => 2
primitive IMGINITTIF is IMGFlag
	fun apply(): U32 => 4


primitive IMG

	fun init(flags: IMGFlag): I32 =>
		@IMG_Init(flags())

	fun quit() =>
		@IMG_Quit()

	fun load(file: String): SDLSurface =>
		@IMG_Load(file.cstring())

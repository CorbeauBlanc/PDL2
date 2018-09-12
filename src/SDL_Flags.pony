use "collections"

interface SDLFlag
	fun apply(): U32
	fun op_or(other: SDLFlag val): SDLFlag val =>
		recover UdefSDLFlag(this.apply() or other()) end
	fun op_and(other: SDLFlag val): SDLFlag val =>
		recover UdefSDLFlag(this.apply() and other()) end
	fun op_xor(other: SDLFlag val): SDLFlag val =>
		recover UdefSDLFlag(this.apply() xor other()) end

class UdefSDLFlag is SDLFlag
	var _val: U32
	new create(value: U32) => _val = value
	fun apply(): U32 => _val

/*
	Initialisation flags
*/
primitive INITNULLFLAG is SDLFlag
	fun apply(): U32 => 0x00000000
primitive INITTIMER is SDLFlag
	fun apply(): U32 => 0x00000001
primitive INITAUDIO is SDLFlag
	fun apply(): U32 => 0x00000010
primitive INITVIDEO is SDLFlag
	fun apply(): U32 => 0x00000020
primitive INITJOYSTICK is SDLFlag
	fun apply(): U32 => 0x00000200
primitive INITHAPTIC is SDLFlag
	fun apply(): U32 => 0x00001000
primitive INITGAMECONTROLLER is SDLFlag
	fun apply(): U32 => 0x00002000
primitive INITEVENTS is SDLFlag
	fun apply(): U32 => 0x00004000
primitive INITNOPARACHUTE is SDLFlag
	fun apply(): U32 => 0x00100000

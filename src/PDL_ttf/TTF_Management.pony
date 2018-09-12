use "collections"
use "strings"
use "lib:SDL2"

use @TTF_OpenFont[Pointer[_Font]](file: Pointer[U8] tag, ptsize: I32)
use @TTF_OpenFontIndex[Pointer[_Font]](file: Pointer[U8] tag, ptsize: I32, index: I64)
use @TTF_CloseFont[None](font: Pointer[_Font])


primitive _Font
type TTFFont is Pointer[_Font]

interface TTFFlag
	fun apply(): U32
	fun op_or(other: TTFFlag val): TTFFlag val =>
		recover UdefTTFFlag(this.apply() or other()) end
	fun op_and(other: TTFFlag val): TTFFlag val =>
		recover UdefTTFFlag(this.apply() and other()) end
	fun op_xor(other: TTFFlag val): TTFFlag val =>
		recover UdefTTFFlag(this.apply() xor other()) end

class UdefTTFFlag is TTFFlag
	var _val: U32
	new create(value: U32) => _val = value
	fun apply(): U32 => _val

use "collections"
use "strings"
use "lib:SDL2"
use "lib:ccaster"

use @CC_cast_to_CommonEvent[SDLPtrCommonEvent](event: SDLPtrEvent)
use @CC_cast_to_WindowEvent[SDLPtrWindowEvent](event: SDLPtrEvent)
use @CC_cast_to_KeyboardEvent[SDLPtrKeyboardEvent](event: SDLPtrEvent)
use @CC_cast_to_TextEditingEvent[SDLPtrTextEditingEvent](event: SDLPtrEvent)
use @CC_cast_to_TextInputEvent[SDLPtrTextInputEvent](event: SDLPtrEvent)
use @CC_cast_to_MouseMotionEvent[SDLPtrMouseMotionEvent](event: SDLPtrEvent)
use @CC_cast_to_MouseButtonEvent[SDLPtrMouseButtonEvent](event: SDLPtrEvent)
use @CC_cast_to_MouseWheelEvent[SDLPtrMouseWheelEvent](event: SDLPtrEvent)
use @CC_cast_to_JoyAxisEvent[SDLPtrJoyAxisEvent](event: SDLPtrEvent)
use @CC_cast_to_JoyBallEvent[SDLPtrJoyBallEvent](event: SDLPtrEvent)
use @CC_cast_to_JoyHatEvent[SDLPtrJoyHatEvent](event: SDLPtrEvent)
use @CC_cast_to_JoyButtonEvent[SDLPtrJoyButtonEvent](event: SDLPtrEvent)
use @CC_cast_to_JoyDeviceEvent[SDLPtrJoyDeviceEvent](event: SDLPtrEvent)
use @CC_cast_to_ControllerAxisEvent[SDLPtrControllerAxisEvent](event: SDLPtrEvent)
use @CC_cast_to_ControllerButtonEvent[SDLPtrControllerButtonEvent](event: SDLPtrEvent)
use @CC_cast_to_ControllerDeviceEvent[SDLPtrControllerDeviceEvent](event: SDLPtrEvent)
use @CC_cast_to_AudioDeviceEvent[SDLPtrAudioDeviceEvent](event: SDLPtrEvent)
use @CC_cast_to_QuitEvent[SDLPtrQuitEvent](event: SDLPtrEvent)
use @CC_cast_to_UserEvent[SDLPtrUserEvent](event: SDLPtrEvent)
use @CC_cast_to_TouchFingerEvent[SDLPtrTouchFingerEvent](event: SDLPtrEvent)
use @CC_cast_to_MultiGestureEvent[SDLPtrMultiGestureEvent](event: SDLPtrEvent)
use @CC_cast_to_DollarGestureEvent[SDLPtrDollarGestureEvent](event: SDLPtrEvent)
use @CC_cast_to_DropEvent[SDLPtrDropEvent](event: SDLPtrEvent)


primitive CC

	fun getCommonEvent(event: SDLPtrEvent): SDLPtrCommonEvent =>
		@CC_cast_to_CommonEvent(event)

	fun getWindowEvent(event: SDLPtrEvent): SDLPtrWindowEvent =>
		@CC_cast_to_WindowEvent(event)

	fun getKeyboardEvent(event: SDLPtrEvent): SDLPtrKeyboardEvent =>
		@CC_cast_to_KeyboardEvent(event)

	fun getTextEditingEvent(event: SDLPtrEvent): SDLPtrTextEditingEvent =>
		@CC_cast_to_TextEditingEvent(event)

	fun getTextInputEvent(event: SDLPtrEvent): SDLPtrTextInputEvent =>
		@CC_cast_to_TextInputEvent(event)

	fun getMouseMotionEvent(event: SDLPtrEvent): SDLPtrMouseMotionEvent =>
		@CC_cast_to_MouseMotionEvent(event)

	fun getMouseButtonEvent(event: SDLPtrEvent): SDLPtrMouseButtonEvent =>
		@CC_cast_to_MouseButtonEvent(event)

	fun getMouseWheelEvent(event: SDLPtrEvent): SDLPtrMouseWheelEvent =>
		@CC_cast_to_MouseWheelEvent(event)

	fun getJoyAxisEvent(event: SDLPtrEvent): SDLPtrJoyAxisEvent =>
		@CC_cast_to_JoyAxisEvent(event)

	fun getJoyBallEvent(event: SDLPtrEvent): SDLPtrJoyBallEvent =>
		@CC_cast_to_JoyBallEvent(event)

	fun getJoyHatEvent(event: SDLPtrEvent): SDLPtrJoyHatEvent =>
		@CC_cast_to_JoyHatEvent(event)

	fun getJoyButtonEvent(event: SDLPtrEvent): SDLPtrJoyButtonEvent =>
		@CC_cast_to_JoyButtonEvent(event)

	fun getJoyDeviceEvent(event: SDLPtrEvent): SDLPtrJoyDeviceEvent =>
		@CC_cast_to_JoyDeviceEvent(event)

	fun getControllerAxisEvent(event: SDLPtrEvent): SDLPtrControllerAxisEvent =>
		@CC_cast_to_ControllerAxisEvent(event)

	fun getControllerButtonEvent(event: SDLPtrEvent): SDLPtrControllerButtonEvent =>
		@CC_cast_to_ControllerButtonEvent(event)

	fun getControllerDeviceEvent(event: SDLPtrEvent): SDLPtrControllerDeviceEvent =>
		@CC_cast_to_ControllerDeviceEvent(event)

	fun getAudioDeviceEvent(event: SDLPtrEvent): SDLPtrAudioDeviceEvent =>
		@CC_cast_to_AudioDeviceEvent(event)

	fun getQuitEvent(event: SDLPtrEvent): SDLPtrQuitEvent =>
		@CC_cast_to_QuitEvent(event)

	fun getUserEvent(event: SDLPtrEvent): SDLPtrUserEvent =>
		@CC_cast_to_UserEvent(event)

	fun getTouchFingerEvent(event: SDLPtrEvent): SDLPtrTouchFingerEvent =>
		@CC_cast_to_TouchFingerEvent(event)

	fun getMultiGestureEvent(event: SDLPtrEvent): SDLPtrMultiGestureEvent =>
		@CC_cast_to_MultiGestureEvent(event)

	fun getDollarGestureEvent(event: SDLPtrEvent): SDLPtrDollarGestureEvent =>
		@CC_cast_to_DollarGestureEvent(event)

	fun getDropEvent(event: SDLPtrEvent): SDLPtrDropEvent =>
		@CC_cast_to_DropEvent(event)

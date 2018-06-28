#ifndef CCASTER_H
#define CCASTER_H

void	*CC_cast_to_CommonEvent(void *ptr);
void	*CC_cast_to_WindowEvent(void *ptr);
void	*CC_cast_to_KeyboardEvent(void *ptr);
void	*CC_cast_to_TextEditingEvent(void *ptr);
void	*CC_cast_to_TextInputEvent(void *ptr);
void	*CC_cast_to_MouseMotionEvent(void *ptr);
void	*CC_cast_to_MouseButtonEvent(void *ptr);
void	*CC_cast_to_MouseWheelEvent(void *ptr);
void	*CC_cast_to_JoyAxisEvent(void *ptr);
void	*CC_cast_to_JoyBallEvent(void *ptr);
void	*CC_cast_to_JoyHatEvent(void *ptr);
void	*CC_cast_to_JoyButtonEvent(void *ptr);
void	*CC_cast_to_JoyDeviceEvent(void *ptr);
void	*CC_cast_to_ControllerAxisEvent(void *ptr);
void	*CC_cast_to_ControllerButtonEvent(void *ptr);
void	*CC_cast_to_ControllerDeviceEvent(void *ptr);
void	*CC_cast_to_AudioDeviceEvent(void *ptr);
void	*CC_cast_to_QuitEvent(void *ptr);
void	*CC_cast_to_UserEvent(void *ptr);
void	*CC_cast_to_TouchFingerEvent(void *ptr);
void	*CC_cast_to_MultiGestureEvent(void *ptr);
void	*CC_cast_to_DollarGestureEvent(void *ptr);
void	*CC_cast_to_DropEvent(void *ptr);

#endif // CCASTER_H

package core;

@:native('playdate.keyboard')
extern class Keyboard {
	/**
	 * Access or set the text value 
	 * of the keyboard.
	 */
	public static var text:String;

	/**
	 * If set, this function will be called when the
	 * keyboard is finished the opening animation.
	 */
	public static var keyboardDidShowCallback:Void->Void;

	/**
	 * If set, this function will be called when the keyboard
	 * has finished the hide animation.
	 */
	public static var keyboardDidHideCallback:Void->Void;

	/**
	 * If set, this function will be called when the keyboard
	 * starts to close. A boolean argument will be passed to the
	 * callback, true if the user selected "Ok" close the keyboard,
	 * `false` otherwise.
	 */
	public static var keyboardWillHidecallback:Void->Void;

	/**
	 * If set, this function is called as the keyboard animates
	 * open or closed. Provided as a way to sync animations with
	 * the keyboard movement.
	 */
	public static var keyboardAnimatingCallback:Void->Void;

	/**
	 * If set, this function will be called every time a 
	 * character is entered or deleted.
	 */
	public static var textChangedCallback:Void->Void;

	/**
	 * Opens the keyboard, taking over input focus.
	 * text, if provided, will be used to set the initial text 
	 * value of the keyboard.
	 * @param text 
	 */
	@:luaDotMethod
	public static function show(text:String):Void;

	/**
	 * Hides the keyboard.
	 */
	@:luaDotMethod
	public static function hide():Void;

	/**
	 * Returns the current x location of the left edge of the
	 * keyboard.
	 * @return Float
	 */
	@:luaDotMethod
	public static function left():Float;

	/**
	 * Returns the pixel width of the keyboard.
	 * @return Float
	 */
	@:luaDotMethod
	public static function width():Int;

	/**
	 * Returns true if the keyboard is currently being shown.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function isVisible():Bool;
}

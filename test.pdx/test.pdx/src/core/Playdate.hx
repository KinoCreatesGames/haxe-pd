package core;

typedef Button = String;

@:native('playdate')
extern class Playdate {
	@:luaDotMethod
	public static var graphics:Graphics;

	/**
	 * Dpad up
	 */
	@:luaDotMethod
	public static var kButtonUp:Button;

	/**
	 * Dpad right
	 */
	@:luaDotMethod
	public static var kButtonRight:Button;

	/**
	 * Dpad down
	 */
	@:luaDotMethod
	public static var kButtonDown:Button;

	/**
	 * Dpad left
	 */
	@:luaDotMethod
	public static var kButtonLeft:Button;

	/**
	 * Checks whether a button is pressed or not.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function buttonIsPressed(button:Button):Bool;

	/**
	 * Heart of the play date application.
	 * Updates the game. This is called
	 * before every frame is drawn onscreen.
	 * Use the function to poll input, run game logic, move
	 * sprites.
	 * @return 
	 */
	@:luaDotMethod
	public static function update():Void;
}

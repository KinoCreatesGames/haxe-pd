package core;

@:native('playdate.graphics.animation.blinker')
extern class Blinker {
	public function new();

	/**
	 * Updates the state of all valid blinkers.
	 */
	@:luaDotMethod
	public static function updateAll():Void;

	/**
	 * Updates the caller's state.
	 */
	public function update():Void;

	/**
	 * Starts a blinker if it's not running.
	 */
	public function start():Void;

	/**
	 * Starts a blinker if it's not running and sets its
	 * loop property to true.
	 */
	public function startLoop():Void;

	/**
	 * Stops a blinker if it's running. Its state will reset
	 * to it's `default` value.
	 */
	public function stop():Void;

	/**
	 * Stops all blinkers.
	 */
	@:luaDotMethod
	public static function stopAll():Void;

	/**
	 * Flags the caller for removal from the global
	 * list of blinkers.
	 */
	public function remove():Void;
}

package core;

@:native('timer')
extern class Timer {
	/**
	 * Updates all timers within the game.
	 */
	@:luaDotMethod
	public static function updateTimers():Void;
}

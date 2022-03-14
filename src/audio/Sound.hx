package audio;

@:native('playdate.sound')
extern class Sound {
	/**
	 * Returns the current time, in seconds, as measured by
	 * the audio device. The audio device uses its own time
	 * based in order to provide accurate timing.
	 * @return Float
	 */
	@:luaDotMethod
	public static function getCurrentTime():Float;

	/**
	 * Resets the audio output device time counter.
	 */
	@:luaDotMethod
	public static function resetTime():Void;
}

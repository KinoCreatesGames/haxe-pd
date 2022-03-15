package audio;

typedef SEffect = String;

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

	/**
	 * 
	 * 'Adds the given sound effect to the default
	 * sound channel.
	 * 
	 * Different Effects Include:
	 * * bitcrusher
	 * * twopolefilter
	 * * oneppolefilter
	 * * ringmod
	 * * overdrive 
	 * * delay line
	 * @param effect 
	 */
	@:luaDotMethod
	public static function addEffect(effect:Effect):Void;

	/**
	 * Removes the given effect from the default sound channel.
	 * @param effect 
	 */
	@:luaDotMethod
	public static function removeEffect(effect:Effect):Void;
}

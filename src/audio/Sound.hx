package audio;

typedef SEffect = String;
typedef PassType = String;
typedef WaveForm = String;

@:native('playdate.sound')
extern class Sound {
	/**
	 * "lowpass" or "lopass"
	 */
	public static var kFilterLowPass:PassType;

	/**
	 * "highpass" or "hipass"
	 */
	public static var kFilterHighPass:PassType;

	/**
	 * "bandpass"
	 */
	public static var kFilterBandPass:PassType;

	/**
	 * "notch"
	 */
	public static var kFilterNotch:PassType;

	/**
	 * "peq"
	 */
	public static var kFilterPEQ:PassType;

	/**
	 * "lowshelf" or "lowshelf"
	 */
	public static var kFilterLowShelf:PassType;

	/**
	 * "highshelf" or "hishelf"
	 */
	public static var kFilterHighShelf:PassType;

	public static var kWaveSine:WaveForm;

	public static var kWaveSquare:WaveForm;

	public static var kWaveSawtooth:WaveForm;

	public static var kWaveTriangle:WaveForm;

	public static var kWaveNoise:WaveForm;

	public static var kWavePOPhase:WaveForm;

	public static var kWavePODigital:WaveForm;

	public static var kWavePOVosim:WaveForm;

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

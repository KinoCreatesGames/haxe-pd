package audio;

import core.Types.HeadphoneState;

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

	/**
	 * Returns a pair of booleans (headphone, mic) indicating whether
	 * headphones are plugged in, and if so whethery they have a microphone
	 * attached. If changeCallback is a function, it will be called 
	 * every time the headphone state changes, until it is cleared
	 * by calling `playdate.sound.getHeadphoneState(nil)`. If a change
	 * callback is set, the audio does **not** automatically
	 * switch from speaker to headphones when headphones arep lugged in
	 * (and vice versa), so the callback should use
	 * `playdate.sound.setOutputsActive` to change the output
	 * if needed.
	 * @param changeCallback 
	 * @return HeadphoneState
	 */
	@:luaDotMethod
	public static function getHeadphoneState(changeCallback:Void->Void):HeadphoneState;

	/**
	 * Forces sound to be played on the headphones or on the speaker,
	 * regardless of whether headphones are plugged in or not. (With the c
	 * aveat that it is not actually possible to play on the headphones if 
	 * they're not plugged in.) This function has no effect in the simulator.
	 * @param headphone 
	 * @param speaker 
	 */
	@:luaDotMethod
	public static function setOutputsActive(headphone:Bool, speaker:Bool):Void;
}

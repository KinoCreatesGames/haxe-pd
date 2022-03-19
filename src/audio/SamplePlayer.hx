package audio;

import core.Types.FilePlayVol;
import haxe.extern.EitherType;

@:native('playdate.sound.sampleplayer')
extern class SamplePlayer {
	/**
	 * Returns a new `sampleplayer` object, with the sound
	 * data loaded in memory. If the sample can't be loaded, the 
	 * function returns nil and a second value containing the 
	 * error.
	 * @param path 
	 */
	public function new(path:String);

	/**
	 * Returns a new `sampleplayer` object for playing
	 * the given `sample`.
	 * @param sample 
	 * @return SamplePlayer
	 */
	@:native('new')
	public function newWithSample(sample:Sample):SamplePlayer;

	/**
	 * Returns a new sample player with the same
	 * sample, volume, and rate as the given
	 * sampleplayer.
	 * @return SamplePlayer
	 */
	public function copy():SamplePlayer;

	/**
	 * Starts playing the sample.
	 * If `repeatCount` is greater than one, it loops
	 * the given number of times. If zero, it loops endlessly
	 * until it is stopped with `stop()`. If `rate` is set,
	 * the sample will be played at the given rate instead of the
	 * rate previous set with `setRate()`.
	 * @param repeatCount 
	 * @param rate 
	 */
	public function play(?repeatCount:Int, ?rate:Float):Void;

	/**
	 * Schedules the sound for playing at the device time
	 * when. If vol is specified, the sample will be played at level vol(
	 * with optional separate right channel volume rightvol). If 
	 * when is less than the current device time, the sample is played
	 * immediately. If rate is set, the sample will be played at the 
	 * given rate instead of the rate previous set with 
	 * `setRate()`.
	 * @param when 
	 * @param vol 
	 * @param rightVol 
	 * @param rate 
	 */
	public function playAt(when:Float, ?vol:Float, ?rightVol:Float, ?rate:Float):Void;

	/**
	 * Sets the playback volume (0.0 - 1.0) for left and right
	 * channels. If the optional right argument is omitted, it is
	 * the same as left.
	 * @param left 
	 * @param right 
	 */
	public function setVolume(left:Float, ?right:Float):Void;

	/**
	 * Returns the playback volume for the sampleplayer, a single
	 * value for mono sources or a pair of values (left, right) for
	 * stereo sources.
	 * @return Float
	 */
	public function getVolume():EitherType<Float, FilePlayVol>;

	/**
	 * Sets a function to be called every the sample loops.
	 * The sample object is passed to this functio nas the first 
	 * argument, and the optional arg argument is passed 
	 * as the second.
	 * @param callback 
	 * @return -> Void, ?arg:Any):Void
	 */
	public function setLoopCallback(callback:(Sample, Any) -> Void, ?arg:Any):Void;

	/**
	 * Sets the range of the sample to play.
	 * `start` and `end` are frame offsets from the beginning
	 * of the sample.
	 * @param start 
	 * @param end 
	 */
	public function setPlayRange(start:Float, end:Float):Void;

	/**
	 * Pauses or resumes playback.
	 * @param flag 
	 */
	public function setPaused(flag:Bool):Void;

	/**
	 * Returns a boolean indicating whether the sample
	 * is playing.
	 * @return Bool
	 */
	public function isPlaying():Bool;

	/**
	 * Stops playing the sample.
	 */
	public function stop():Void;

	/**
	 * Sets the `sample` to be played.
	 * @param sample 
	 */
	public function setSample(sample:Sample):Void;

	/**
	 * Gets the `sample` to be played.
	 * @return Sample
	 */
	public function getSample():Sample;

	/**
	 * Returns the length of the sampleplayer's sample, in seconds. 
	 * Length is not scaled by playback rate.
	 * @return Float
	 */
	public function getLength():Float;

	/**
	 * Sets the playback rate for the sample.
	 * 1.0 is normal speed, 0.5 is down an octave,
	 * 2.0 is up an octave, etc. Sampleplayers
	 * can also play samples backwards,
	 * by setting a negative rate.
	 * @param rate 
	 */
	public function setRate(rate:Float):Void;

	/**
	 * Gets the playback rate for the sample.
	 * 1.0 is normal speed, 0.5 is down an octave,
	 * 2.0 is up an octave, etc. Sampleplayers
	 * can also play samples backwards,
	 * by setting a negative rate.
	 * @return Float
	 */
	public function getRate():Float;

	/**
	 * Sets the `signal` to use as a rate modulator, added to the
	 * rate set with `setRate()`.
	 * @param signal 
	 */
	public function setRateMod(signal:Float):Void;

	/**
	 * Sets the current offset of the sampleplayer, in seconds.
	 * Thsi value is not adjusted for rate.
	 * @param seconds 
	 */
	public function setOffset(seconds:Float):Void;

	/**
	 * Gets the current offset of the sampleplayer, in seconds.
	 * This value is not adjusted for rate.
	 * @return Float
	 */
	public function getOffset():Float;
}

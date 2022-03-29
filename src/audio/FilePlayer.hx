package audio;

import core.Types.FilePlayVol;

@:native('playdate.sound.fileplayer')
extern class FilePlayer extends Source {
	/**
	 * Returns a fileplayer object, which can
	 * stream samples from disk. The file to play is set with the
	 * `load` function.
	 * 
	 * If given, buffersize specifies the size in seconds of the
	 * fileplayer's data buffer. A shorter value reduces the latency
	 * of a `setOffset` call, but increases the chance of a buffer
	 * underrun.
	 * @param bufferSize 
	 */
	public function new(?bufferSize:Float);

	/**
	 * Instructs the fileplayer to load the file at path when `play()`
	 * is called on it. The fileplayer must not be playing when this
	 * function is called. 
	 * 
	 * The fileplayer's play offset is
	 * reset to the beginning of the file, 
	 * and its loop range is cleared.
	 * @param path 
	 */
	public function load(path:String):Void;

	public function stop():Void;

	/**
	 * Stops playing the file. A subsequent `play()` call
	 * resumes playblack from where it was paused.
	 */
	public function pause():Void;

	/**
	 * Returns a boolean indicating whether the fileplayer
	 * is playing.
	 */
	public function isPlaying():Bool;

	/**
	 * Returns the length, in seconds,
	 * of the audio file.
	 * @return Float
	 */
	public function getLength():Float;

	/**
	 * Returns the fileplayer's underrun flag, indicating that the player
	 * ran out of data. This can be checked in the finish callback 
	 * function to check for an underrun error.
	 * @return Bool
	 */
	public function didUnderrun():Bool;

	/**
	 * Sets the playback rate for the file 1.0 is normal speed, 0.5 
	 * is down an octave, 2.0 is up an octave, etc.
	 * 
	 * Unlike sampleplayers, fileplayers can't play in reverse.
	 * @param rate 
	 */
	public function setRate(rate:Float):Void;

	/**
	 * Gets the playback rate for the file. 1.0 is normal speed, 
	 * 0.5 is down an octave, 2.0 is up an octave, etc. Unlike
	 * sampleplayers, fileplayers can't play in reverse.
	 * @return Float
	 */
	public function getRate():Float;

	/**
	 * Returns the current volume for the fileplayer,
	 * a single value for mono sources or a pair
	 * of values (left, right) for stereo sources.
	 * @return Float
	 */
	public function getvolume():FilePlayVol;

	/**
	 * Sets the current offset of the fileplayer, in seconds.
	 * This value is not adjusted for rate.
	 * @param seconds 
	 */
	public function setOffset(seconds:Float):Void;

	/**
	 * Gets the current offset of the fileplayer,
	 * in seconds. This value is not adjusted for rate.
	 * @return Float
	 */
	public function getOffset():Float;
}

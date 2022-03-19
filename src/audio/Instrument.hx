package audio;

import audio.Track.Note;

/**
 * Instrument
 */
@:native('playdate.sounds.instrument')
extern class Instrument {
	public function new(?synth:Synth);

	/**
	 * Tranposes all voices in the instrument. Halfsteps can
	 * be a fractional value.
	 * @param halfSteps 
	 */
	public function setTranspose(halfSteps:Float):Void;

	/**
	 * Stops the instrument voice playing note `note`. 
	 * If `when` is given, the note is stopped when seconds in the future,
	 * otherwise it's stopped immediately.
	 * @param note 
	 * @param when 
	 */
	public function noteOff(note:Note, ?when:Float):Void;

	/**
	 * Sends a stop signal to all playing notes.
	 */
	public function allNotesOff():Void;

	/**
	 * Sets the instrument volume, If a single value is passed in,
	 * sets both left side and right side volume to the given value.
	 * If two values are given, volumes are set separately.
	 * 
	 * Volumes values are between 0.0 and 1.0.
	 * @param left 
	 */
	public function setVolume(left:Float, ?right:Float):Void;

	/**
	 * Returns the current volume for the synth, a single value
	 * for mono sources or a pair of values (left, right) for stereo
	 * sources.
	 * 
	 * Volume values are between 0.0 and 1.0.
	 * @return Float
	 */
	public function getVolume():Float;
}

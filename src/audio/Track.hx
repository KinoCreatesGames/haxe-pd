package audio;

typedef Note = {
	step:Float,
	note:String,
	length:Float,
	velocity:Float
}

/**
 * Track
 */
@:native('playdate.sound.track')
extern class Track {
	public function new();

	public function setNotes(list:Note):Void;

	/**
	 * Returns the length, in steps, of the track-- that is,
	 * the step where the last note in the track ends.
	 * @return Float
	 */
	public function getLength():Float;

	/**
	 * Returns the current number of notes active in the track.
	 * @return Int
	 */
	public function getNotesActive():Int;

	/**
	 * Returns the maximum number of notes simultaneously
	 * active in the track. (Known bug: only works for midi files.)
	 * @return Int
	 */
	public function getPolyphony():Int;

	/**
	 * Sets the `instrument` that this track plays.
	 * If `instr` is a `synth` the function creates an instrument
	 * for the synth.
	 * @param instr 
	 */
	public function setInstrument(instr:Instrument):Void;

	/**
	 * Gets the `instrument` that this track plays.
	 * @return Instrument
	 */
	public function getInstrument():Instrument;

	/**
	 * Mutes or unmutes the track.
	 * @param flag 
	 */
	public function setMuted(flag:Bool):Void;

	/**
	 * Adds a `signal` object to the track. Note that the
	 * signal must be assigned to a modulation input for it to have
	 * any audible effect. The input can be anywhere in the sound
	 * engine -- it's not required to belong to the track any way.
	 * @param signal 
	 */
	public function addControlSignal(signal:ControlSignal):Void;

	/**
	 * Returns an array of `controlSignal` object assigned to this track.
	 * @return Signal
	 */
	public function getControlSignal():Array<ControlSignal>;
}

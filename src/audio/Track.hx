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

	/**
	 * Adds a single note even to the track, letting you
	 * specifiy `step, note, length, and velocity` directly. The second
	 * format allows you to pack them into a table, using
	 * the format returned by `getNotes()`. The `note` argument can be
	 * a MIDI note number or a note name like `Db3`. `length` is a length
	 * of the note in steps, not time--that is, it follows the sequence's
	 * tempo. The default velocity is 1.0.
	 * 
	 * See `setNotes()` for the ability to add more than one note at a time.
	 * @param table 
	 */
	public function addNote(table:Note):Void;

	/**
	 * Set multiples notes at once, each array element should be
	 * a table containing values for the keys. The Tables contain values
	 * for keys `step, note, length, velocity`. 
	 * 
	 * The table contain values for keys `step, note. length, and velocity`.
	 * If `step` is given, the function returns only the notes at
	 * that step; if both `step` and `endstep` are set, it returns
	 * the notes between the two steps (including ntoes at endstep).
	 * 
	 * The `note` field in the event tables is always a MIDI note number
	 * value, even if the note was added using the string notation.
	 * @param list   
	 */
	public function setNotes(list:Array<Note>):Void;

	/**
	 * Returns an array of tables 
	 * representing the note events in the track.
	 * 
	 * The table contain values for keys `step, note. length, and velocity`.
	 * If `step` is given, the function returns only the notes at
	 * that step; if both `step` and `endstep` are set, it returns
	 * the notes between the two steps (including ntoes at endstep).
	 * 
	 * The `note` field in the event tables is always a MIDI note number
	 * value, even if the note was added using the string notation.
	 * @param step 
	 * @param endStep 
	 * @return Array<Note>
	 */
	public function getNotes(?step:Float, ?endStep:Float):Array<Note>;

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

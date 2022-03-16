package audio;

/**
 * Sequence
 */
@:native('playdate.sound.sequence')
extern class Sequence {
	/**
	 * Creates a new sound sequence. If path is given, it attempts
	 * to load data from the midi file into the sequence.
	 * @param path 
	 */
	public function new(?path:String);

	/**
	 * Starts playing the sequence. `finishCallback` is an optional
	 * function to be called when the sequence finishes playing
	 * or is stopped. The sequence is passed to the callback
	 * as its single arugment.
	 * @param finishCallback 
	 */
	public function play(?finishCallback:Sequence->Void):Void;

	/**
	 * Stops playing the sequence.
	 */
	public function stop():Void;

	/**
	 * Returns true if the sequence is currently playing.
	 * @return Bool
	 */
	public function isPlaying():Bool;

	/**
	 * Returns the length of the longest
	 * track in the sequence.
	 * Also see `track.getLength()`
	 * @return Float
	 */
	public function getLength():Float;

	/**
	 * Moves the play position for the sequence to step number `step`.
	 * If `play` is set, triggers the notes at that step.
	 * @param step 
	 * @param play 
	 */
	public function goToStep(step:Float, ?play:Bool):Void;

	/**
	 * Returns the step number of the sequence is currently at.
	 * @return Float
	 */
	public function getCurrentStep():Float;

	/**
	 * Sets the tempo of the sequence, in steps per second.
	 * @param stepsPerSecond 
	 */
	public function setTempo(stepsPerSecond:Float):Void;

	/**
	 * Gets the tempo of the sequence, in steps per second.
	 * @return Float
	 */
	public function getTempo():Float;

	/**
	 * Sets the looping range of the sequence. If loops
	 * is 0 or unset, the loops repeats endlessly.
	 * @param startStep 
	 * @param endStep 
	 * @param loopCount 
	 */
	public function setLoops(startStep:Float, endStep:Float, ?loopCount:Int):Void;

	/**
	 * Returns the number of tracks in the sequence.
	 * @return Int
	 */
	public function getTrackCount():Int;

	/**
	 * Adds the given `Track` to the sequence.
	 * @param track 
	 */
	public function addTrack(track:Track):Void;

	/**
	 * Sets the given `Track` object at the position 
	 * of `n` in the sequence.
	 * @param n 
	 * @param track 
	 */
	public function setTrackAtIndex(n:Int, track:Track):Void;

	/**
	 * Gets the given `Track` object at the position
	 * `n` in the sequence.
	 * @param n 
	 */
	public function getTrackAtIndex(n:Int):Track;

	/**
	 * Sends an `allNotesOff` message to each
	 * track's instrument.
	 */
	public function allNotesOff():Void;
}

package audio;

@:native('playdate.sound.lfo')
extern class LFO {
	/**
	 * Sets the depth of the LFO's modulation.
	 * @param depth 
	 */
	public function setDepth(depth:Float):Void;

	/**
	 * Sets the rate of the LFO, in cycles per seconds.
	 * @param rate 
	 */
	public function setRate(rate:Float):Void;

	/**
	 * Sets the center value of the LFO.
	 * @param center 
	 */
	public function setCenter(center:Float):Void;

	/**
	 * Sets the current phase of the LFO, from 0 to 1
	 * @param phase 
	 */
	public function setPhase(phase:Float):Void;

	/**
	 * If an LFO is marked global, it is
	 * continuously updated whether or not it's attached
	 * to any source.
	 * @param flag 
	 */
	public function setGlobal(flag:Bool):Void;

	/**
	 * If retrigger is on, the LFO's phase is reset to 0
	 * when a synth using the LFO starts playing a note.
	 * @param flag 
	 */
	public function setRetrigger(flag:Bool):Void;
}

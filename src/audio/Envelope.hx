package audio;

@:native('playdate.sound.envelope')
extern class Envelope {
	public function new(?attack:Float, ?decay:Float, ?sustain:Float, ?release:Float);

	/**
	 * Sets the envelope time to attack, in seconds
	 * @param attack 
	 */
	public function setAttack(attack:Float):Void;

	/**
	 * Sets the envelope decay time to decay, in seconds.
	 * @param decay 
	 */
	public function setDecay(decay:Float):Void;

	/**
	 * Sets the envelope level to sustain, as a proportion of the
	 * maximum. For example, if the sustain level is 0.5, the signal
	 * value rises to its full value over the attack phase
	 * of the envelope, then drops to half it's maximum over
	 * the decay phase, and remains there while the envelope
	 * is active.
	 * @param sustain 
	 */
	public function setSustain(sustain:Float):Void;

	/**
	 * Sets the envelope release time to attack, in seconds.
	 * @param release 
	 */
	public function setRelease(release:Float):Void;

	/**
	 * Sets scale values to the envelope. The transformed envelope
	 * has an initial value of offset and a maxmimum (minimum if 
	 * scale is negative) of offset + scale
	 * @param scale 
	 */
	public function setScale(scale:Float):Void;

	/**
	 * Sets scale and offset values to the envelope. The transformed
	 * envelope has an initial value of offset and a maximum (minimum
	 * if scale is negative) of offset + scale
	 * @param offset 
	 */
	public function setOffset(offset:Float):Void;

	/**
	 * Sets whether to use legato phrasing for the envelope. 
	 * IF the legato flag is set, when the envelope is re-trigerred
	 * before it's released, it remains in the sustain phase
	 * instead of jumping back to the attack phase.
	 * @param flag 
	 */
	public function setLegato(flag:Bool):Void;

	/**
	 * If retrigger is on, the envelope always starts from 0
	 * when a note starts playing, instead of the current value
	 * if it's active.
	 * @param flag 
	 */
	public function setRetrigger(flag:Bool):Void;

	/**
	 * Triggers the envelope at the given velocity. If a length
	 * parameter is given, the envelope moves to the release phase after
	 * the given time. Otherwise, the envelope ish eld in the
	 * sustain phase until the trigger function is called agai
	 * with velocity equal to zero.
	 * @param velocity 
	 * @param length 
	 */
	public function trigger(velocity:Float, ?length:Float):Void;

	/**
	 * If an envelope is marked global, it is continuously updated whethero
	 * or not it's attached to any source.
	 * @param flag 
	 */
	public function setGlobal(flag:Bool):Void;
}

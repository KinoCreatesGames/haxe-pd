package core;

/**
 * Animator class.
 * You must import `CoreLibs/animator` to use these
 * functions.
 */
@:native('playdate.graphics.animator')
extern class Animator {
	/**
	 * For `easingFunction` that take additiona amplitude
	 * such as `inOutElastic`, set these values on animator
	 * instances to the desired values.
	 */
	public var easingAmplitude:Float;

	/**
	 * For `easingFunction` that takes additional period
	 * arguments such as (inOutElastic), set these values on 
	 * animator instances to the desired values.
	 */
	public var easingPeriod:Float;

	/**
	 * Returns true if the animation is completed. Only returns true
	 * if this function or `currentValue` has been called since
	 * the aniamtion ended in order to allow animations
	 * to fully finish before true is returned.
	 * @return Bool
	 */
	public function ended():Bool;
}

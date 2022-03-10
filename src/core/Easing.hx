package core;

/**
 * Easing functions.
 * You must import 
 * CoreLibs/easing to use these functions
 * 
 * `parameter list:`
 * * time is elapsed time
 * * begin is the beginning value
 * * changeEnd is the change (or end value - start value)
 * * dur is the duration
 * * amp - amplitude
 * * per - period parameter
 * * overS - amount of "overshoot"
 */
@:native('playdate.easingFunctions')
extern class Easing {
	public function linear(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inQuad(ime:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outQuad(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inOutQuad(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outInQuad(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inCubic(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outCubic(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inOutCubic(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outInCubic(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inQuart(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outQuart(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outInQuart(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inOutQuart(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inQuint(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outQuint(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inOutQuint(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outInQuint(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inSine(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outSine(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inOutSine(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outInSine(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inExpo(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outExpo(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inOutExpo(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outInExpo(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inCirc(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outCirc(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inOutCirc(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outInCirc(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inElastic(time:Float, begin:Float, changeEnd:Float, dur:Float, ?amp:Float, ?period:Float):Float;

	public function outElastic(time:Float, begin:Float, changeEnd:Float, dur:Float, ?amp:Float, ?period:Float):Float;

	public function inOutElastic(time:Float, begin:Float, changeEnd:Float, dur:Float, ?amp:Float, ?period:Float):Float;

	public function outInElastic(time:Float, begin:Float, changeEnd:Float, dur:Float, ?amp:Float, ?period:Float):Float;

	public function inBack(time:Float, begin:Float, changeEnd:Float, dur:Float, ?amp:Float, overS:Float):Float;

	public function outBack(time:Float, begin:Float, changeEnd:Float, dur:Float, ?amp:Float, ?period:Float):Float;

	public function inOutBack(time:Float, begin:Float, changeEnd:Float, dur:Float, ?amp:Float, ?period:Float):Float;

	public function outInBack(time:Float, begin:Float, changeEnd:Float, dur:Float, ?amp:Float, ?period:Float):Float;

	public function outBounce(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inBounce(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function inOutBounce(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;

	public function outInBounce(time:Float, begin:Float, changeEnd:Float, dur:Float):Float;
}

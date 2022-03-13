package core;

import haxe.extern.Rest;

typedef EasingFunction = (t:Float, b:Float, c:Float, dur:Float) -> Float;

@:native('playdate.timer')
extern class Timer {
	/**
	 * Current value calculated from the start and end values, the
	 * time elapsed and the easing funciton.
	 */
	public var value:Float;

	/**
	 * The function used to calculate value. The function should be 
	 * of the forum function(t, b, d, c) where t is elapsed time
	 * b is the beginning value, c is the change or end value.
	 * d is the duration.
	 */
	public var easingFunction:(time:Float, begin:Float, changeEnd:Float, dur:Float) -> Float;

	/**
	 * For easing functions that take additiona amplitude and period
	 * arguments such as `inOutElastic`, set these to the
	 * desired values.
	 * 
	 * Used with value timers.
	 */
	public var easingAmplitude:Float;

	/**
	 * For easing functions that take additional amplitude and period
	 * arguments(such as `inOutElastic`), set these to the 
	 * desired values.
	 * 
	 * Used with value timers.
	 */
	public var easingPeriod:Float;

	/**
	 * Set to provide an easing function to be used for the 
	 * reverse portion of the timer. The function should be of 
	 * the form function(t, b, c, d), where t is elapsed time, 
	 * b is the beginning value, 
	 * c is the change (or end value - start value), and 
	 * d is the duration. Many such functions are available 
	 * in `playdate.easingFunctions`(Easing).
	 * 
	 * Used with value timers.
	 */
	public var reverseEasingFunction:(t:Float, b:Float, c:Float, d:Float) -> Float;

	/**
	 * Start value used when calculated value.
	 * 
	 * Used with value timers.
	 */
	public var startValue:Float;

	/**
	 * End values used when calculating value.
	 * 
	 * Used with value timers.
	 */
	public var endValue:Float;

	/**
	 * The number of milliseconds the timer has been running.
	 * Read-only.
	 */
	public var currentTimer(default, null):Float;

	/**
	 * The number of milliseconds to wait before starting the 
	 * timer.
	 */
	public var delay:Float;

	/**
	 * If true, the timer is discarded once it is complete.
	 */
	public var discardOnComplete:Bool;

	/**
	 * The number of milliseconds for which the timer will run.
	 */
	public var duration:Float;

	/**
	 * The number of milliseconds remaining in the timer.
	 * Read-only.
	 */
	public var timeLeft:Float;

	/**
	 * If true, the timer starts over
	 * from the beginning when it complete. Defaults to false.
	 */
	public var repeat:Bool;

	/**
	 * If true, the timer plays in reverse once it has 
	 * completed. The time to complete both the forward and
	 * reverse will be duration x 2. Defaults to false.
	 * 
	 * Please note that `currentTime` will restart at 0 and count up
	 * to duration again when the reverse timer starts, but the value
	 * will be calculated in reverse, from endValue to startValue.
	 * The same easing function (as opposed to the inverse of the easing
	 * function) will be used for the reverse timer unless an alternate
	 * is provided by setting reverseEasingFunction.
	 */
	public var reverses:Bool;

	/**
	 * For repeating timers, this function will be called each time
	 * the timer completes, before it starts again.
	 * 
	 * An array-style table of values that will be passed to the
	 * timerEndedCallback function.
	 */
	public var timerEndedArgs:Array<Any>;

	/**
	 * A callback funciton that will be called on every
	 * frame(every time timer.updateAll() is called.) If the timer
	 * was created with arguments, those will be passed as
	 * arguments to the function provided. Otherwise, the timer
	 * is passed as the single argument.
	 */
	public var updateCallback:(args:Rest<Any>) -> Void;

	/**
	 * Updates all timers within the game.
	 */
	@:luaDotMethod
	public static function updateTimers():Void;

	/**
	 * Performs the function callback after delay milliseconds. 
	 * Accepts a variable number of arguments that will be passed to the 
	 * callback function when it is called. If arguments are not provided, 
	 * the timer itself will be passed to the callback instead.
	 * @param delay 
	 * @param callback 
	 * @return Timer
	 */
	@:luaDotMethod
	public static function performAfterDelay(delay:Float, callback:Rest<Dynamic>->Void):Timer;

	/**
	 * Returns an array listing all timers.
	 * @return Array<Timer>
	 */
	@:luaDotMethod
	public static function allTimers():Array<Timer>;

	/**
	 * 
	 * Returns a new playdate.timer that will run for duration milliseconds. 
	 * callback is a function closure that will be called when 
	 * the timer is complete.
	 * 
	 * Accepts a variable number of arguments that will be passed 
	 * to the callback function when it is called. 
	 * If arguments are not provided, the timer itself will be 
	 * passed to the callback instead.
	 * 
	 * By default, timers start upon instantiation. 
	 * To modify the behavior of a timer, see common timer 
	 * methods and properties.
	 * @param duration 
	 * @param callback 
	 */
	public function new(duration:Float, callback:Rest<Dynamic>->Void);

	/**
	 * Returns a new playdate.timer that will run for duration milliseconds.
	 *  If not specified, startValue and endValue will be 0, 
	 * and a linear easing function will be used.
	 * 
	 * By default, timers start upon instantiation. To modify the behavior of a timer, see common timer methods and properties.
	 * @param duration 
	 * @param startValue 
	 * @param endValue 
	 * @param easingFunction 
	 * @return Timer
	 */
	@:native('new')
	public function delayTimer(duration:Float, ?startValue:Float, ?endValue:Float, ?easingFunction:EasingFunction):Timer;

	/**
	 * Puases a timer. (No need to call start on an instantiated timer;
	 * it's started automatically.)
	 */
	public function pause():Void;

	/**
	 * Resumes a previously paused timer. (No need to call  `start` on a newly-instantied timer:
	 * timers start automatically.)
	 */
	public function start():Void;

	/**
	 * Removes this timer from the list of timers. This happens
	 * automatically wne a non-repeat timer reaches its end, but you can
	 * use this method to dispose of timers manually.
	 * 
	 * Note: timers do not actually get removed until the next
	 * invocation of `updateTimers`.
	 * @return 
	 */
	public function remove():Void;

	/**
	 * Resets a timer to it's initial values.
	 */
	public function reset():Void;
}

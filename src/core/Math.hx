package core;

@:native('playdate.math')
extern class Math {
	/**
	 * Returns a number that is the linear interpolation
	 * between min and max based on t, where t = 0.0 
	 * will return min and t = 1.0 will return max.
	 * @param min 
	 * @param max 
	 * @param t 
	 */
	public static function lerp(min:Float, max:Float, t:Float):Float;
}

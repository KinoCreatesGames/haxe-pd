package geometry;

import core.Types.DeltaPos;

@:native('playdate.geometry.yvector2D')
extern class Vector2D {
	/**
	 * Returns a new geometry vector2D.
	 * @param x 
	 * @param y 
	 */
	public function new(x:Float, y:Float);

	/**
	 * Returns a new copy of the vector2D.
	 * @return Vector2D
	 */
	public function copy():Vector2D;

	public function unpack():DeltaPos;

	/**
	 * Modifiers the caller
	 * by adding vector v.
	 * @param v 
	 */
	public function addVector(v:Vector2D):Void;

	/**
	 * Modifiers the caller by scaling it
	 * by the scale amount.
	 * @param scale 
	 */
	public function scale(scale:Float):Void;

	/**
	 * Returns a new vector
	 * based off the caller by the
	 * given scale amount.
	 * @param scale 
	 * @return Vector2D
	 */
	public function scaleBy(scale:Float):Vector2D;

	/**
	 * Normalizes the vector so that it's length is 1.
	 * If the vector is 0, 0 it's unchanged.
	 */
	public function normalize():Void;

	/**
	 * Returns a new vector by normalizing the given vector
	 * @return Vector2D
	 */
	public function normalized():Vector2D;

	/**
	 * Returns the dot product of the caller and 
	 * the vector v.
	 * @param vector 
	 * @return Float
	 */
	public function dotProduct(vector:Vector2D):Float;

	/**
	 * Returns the magnitude of the caller.
	 * @return Float
	 */
	public function magnitude():Float;

	/**
	 * Returns the square of the magnitude of the caller.
	 * @return Float
	 */
	public function magnitudeSquared():Float;

	/**
	 * Modifiers the caller by projecting it along the vector.
	 * @param vector 
	 */
	public function projectAlong(vector:Vector2D):Void;

	/**
	 * Returns a new vector created by projecting the given vector along
	 * vector v.
	 * @param vector 
	 * @return Vector2D
	 */
	public function projectedAlong(vector:Vector2D):Vector2D;

	/**
	 * Returns the angle between the caller
	 * and the vector.
	 * @param vector 
	 * @return Float
	 */
	public function angleBetween(vector:Vector2D):Float;

	/**
	 * Returns a vector that is the left normal of the caller.
	 * @return Vector2D
	 */
	public function leftNormal():Vector2D;

	/**
	 * Returns a vector that is the right normal of the caller.
	 * @return Vector2D
	 */
	public function rightNormal():Vector2D;
}

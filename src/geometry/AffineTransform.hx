package geometry;

@:native('playdate.geometry.affineTransform')
extern class AffineTransform {
	/**
	 * Returns a new affine transform. Use `new()` to get a new copy
	 * of the identity transform.
	 * @param m11 
	 * @param m12 
	 * @param m21 
	 * @param m22 
	 * @param tx 
	 * @param ty 
	 */
	public function new(m11:Float, m12:Float, m21:Float, m22:Float, tx:Float, ty:Float);

	/**
	 * Creates a new identity transform.
	 * @return AffineTransform
	 */
	public function newAf():AffineTransform;

	public function copy():AffineTransform;

	/**
	 * Mutates the caller so that it is an affine transformation matrix
	 * constructed by inverting itself. 
	 * 
	 * Inversion is generally used to provide reverse transformation
	 * of points within transformed objects. Given coordinates (x, y),
	 * which have been transformed by a given matrix to new coordinates
	 * (x`, y`), transforming the coordinates (x`, y`) by the 
	 * inverse matrix produces the original coordinates (x,y).
	 */
	public function invert():Void;

	/**
	 * Mutates the caller, changing it to an identity transform matrix.
	 */
	public function reset():Void;

	/**
	 * Mutates the caller by applying a translate transformation.
	 * x values are moved by dx, y values by dy.
	 * @param dx 
	 * @param dy 
	 */
	public function translate(dx:Float, dy:Float):Void;

	/**
	 * Returns a copy of the calling affine transform with 
	 * a translate transofmration appended.
	 * @param dx 
	 * @param dy 
	 * @return AffineTransform
	 */
	public function translateBy(dx:Float, dy:Float):AffineTransform;

	/**
	 * Mutates the caller by applying a scaling transformation.
	 * 
	 * If both parameters are passed `sx` is used to scale the 
	 * x values of the transform, `sy` is used to scale the y values.
	 * If only one parameter is passed, it is used to scale
	 * both x and y values.
	 * @param sx 
	 * @param sy 
	 */
	public function scale(sx:Float, ?sy:Float):Void;

	/**
	 * Returns a copy of the calling affine transform
	 * with a scaling transformation appended.
	 * 
	 * If both parameters are passed `sx` is used to scale the 
	 * x values of the transform, `sy` is used to scale the y values.
	 * If only one parameter is passed, it is used to scale
	 * both x and y values.
	 * @param sx 
	 * @param sy 
	 * @returns AffineTransform
	 */
	public function scaleBy(sx:Float, ?sy:Float):AffineTransform;

	/**
	 * Modifiers the polygon by applying the affine
	 * transform.
	 * @param poly 
	 */
	public function transformPolygon(poly:Poly):Void;

	/**
	 * Returns a new polygon with the affine
	 * transform applied.
	 * @param poly 
	 * @return Poly
	 */
	public function transformedPolygon(poly:Poly):Poly;
}

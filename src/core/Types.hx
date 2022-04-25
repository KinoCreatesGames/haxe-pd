package core;

import ui.MenuItem;
import geometry.Rect;
import geometry.Point;

// Multireturn x, y
@:multiReturn extern class XY {
	var x:Float;
	var y:Float;
}

@:multiReturn extern class ScaleXY {
	var xScale:Float;
	var yScale:Float;
}

// Multireturn in Haxe
@:multiReturn extern class WidthHeight {
	var width:Float;
	var height:Float;
}

@:multiReturn extern class XYWHeight {
	var x:Float;
	var y:Float;
	var width:Float;
	var height:Float;
}

@:multiReturn extern class LSPoints {
	var x1:Float;
	var y1:Float;
	var x2:Float;
	var y2:Float;
}

@:multiReturn extern class LSPointsFlag {
	var intersects:Bool;

	@:optional
	var x1:Float;

	@:optional
	var y1:Float;

	@:optional
	var x2:Float;

	@:optional
	var y2:Float;
}

@:multiReturn extern class LSPointFlag {
	var intersects:Bool;

	@:optional
	var point:Point;
}

@:multiReturn extern class LSIntersectsFlag {
	var intersects:Bool;

	@:optional
	var intersectionPoints:Array<Point>;
}

@:multiReturn extern class DeltaPos {
	var dx:Float;
	var dy:Float;
}

@:multiReturn extern class SuccessError {
	var success:Bool;
	var error:String;
}

@:multiReturn extern class FileWrite {
	var bytes:Int;
	@:optional
	var error:String;
}

@:multiReturn extern class FilePlayVol {
	var left:Float;
	@:optional
	var right:Float;
}

@:multiReturn extern class HeadphoneState {
	var headphone:Bool;
	var mic:Bool;
}

@:multiReturn extern class MenuItemReturn {
	var menuItem:Null<MenuItem>;
	var errorMessage:String;
}

typedef SysLang = String;

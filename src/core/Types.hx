package core;

// Multireturn x, y
@:multiReturn extern class XY {
	var x:Int;
	var y:Int;
}

@:multiReturn extern class ScaleXY {
	var xScale:Float;
	var yScale:Float;
}

// Multireturn in Haxe
@:multiReturn extern class WidthHeight {
	var width:Int;
	var height:Int;
}

@:multiReturn extern class XYWHeight {
	var x:Int;
	var y:Int;
	var width:Int;
	var height:Int;
}

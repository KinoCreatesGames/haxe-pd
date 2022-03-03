package util;

// Utility Functions for writing Playdate code
inline function pdupdate(fn:Void->Void) {
	untyped __lua__('function playdate.update()');
	fn();
	untyped __lua__('end');
}

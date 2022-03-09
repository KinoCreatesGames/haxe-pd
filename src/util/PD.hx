package util;

import geometry.Point;
import lua.Coroutine;

// Utility Functions for writing Playdate code
inline function pdupdate(fn:Void->Void) {
	untyped __lua__('function playdate.update()');
	fn();
	untyped __lua__('end');
}

inline function coroutineYield() {
	untyped __lua__('coroutine.yield()');
}

inline function width() {
	return 400;
}

inline function height() {
	return 240;
}

inline function center():Point {
	return new Point(width() / 2, height() / 2);
}

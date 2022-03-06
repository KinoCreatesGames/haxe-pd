package util;

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

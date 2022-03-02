import core.Image;
import core.Sprite;
import core.Graphics;

class Main {
	public static function main() {
		var g = new Graphics();
		trace(g);
		var test = new Image('');
		var spr = new Sprite(test);
		trace(spr);
	}
}

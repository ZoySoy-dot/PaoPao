package;

import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxSprite;
import menus.MainMenu;
import openfl.display.Sprite;


class Main extends Sprite {
	var ver = 0.23 + "e";

	public function new() {
		super();
		addChild(new FlxGame(1280, 720, MainMenu, 100, 60, 60, true));

		trace("Game ver " + ver);
		FlxG.autoPause = false;

		var mouseCursor = new FlxSprite();
		mouseCursor.loadGraphic(Paths.Cursor__png, true, 32, 32);
		FlxG.mouse.load(mouseCursor.pixels, 1);
	}
}

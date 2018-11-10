package entities.characters;


import commands.CommandQueue;
import commands.ShowTextCommand;
import flixel.FlxSprite;
import flixel.FlxState;
/**
    A simple test character
**/
class TestCharacter extends Character
{
    override public function new()
    {
        super();
        x = 4 * 16;
        y = 5 * 16;
    }

    override public function onStart()
    {
        var queue = new CommandQueue();

        queue.insert(new ShowTextCommand(this, "This is a test."));
        queue.insert(new ShowTextCommand(this, "This is part 2 of the test."));

        queue.run();
    }

    override public function create(state:FlxState)
    {
        sprite = new FlxSprite(x - 4, y - 16);
        sprite.loadGraphic(AssetPaths.character_knight__png, true, 24, 32);
        sprite = addAnimations(sprite);
        sprite.animation.play("idle_down");
        state.add(sprite);
    }

    override public function update()
    {
    }
}
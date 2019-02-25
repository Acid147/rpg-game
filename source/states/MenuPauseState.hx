package states;

import components.OptionListComponent;
import components.PanelComponent;
import flixel.math.FlxPoint;
import objects.OptionWindow;

/**
    The pause menu which is accessed by pressing escape.
**/
class MenuPauseState extends State
{
    /**
        Width of the menu.
    **/
    static inline var MENU_WIDTH:Int = 96;
    /**
        Height of the menu.
    **/
    static inline var MENU_HEIGHT:Int = 128;

    override public function create()
    {
        super.create();

        var menu = new OptionWindow(uiLayer);
        menu.position = new FlxPoint(Main.SCREEN_WIDTH - MENU_WIDTH - 8, 8);

        var menuPanel = cast(menu.getComponent(PanelComponent), PanelComponent);
        menuPanel.size = new FlxPoint(MENU_WIDTH, MENU_HEIGHT);

        var menuOption = cast(menu.getComponent(OptionListComponent), OptionListComponent);
        menuOption.options.push(new Option("Inventory", optionInventory));
        menuOption.options.push(new Option("Equipment", optionEquipment));
        menuOption.options.push(new Option("Status", optionStatus));
        menuOption.options.push(new Option("Save", optionSave));
        menuOption.options.push(new Option("Quit", optionQuit));
        menuOption.cancel = close;

        gameObjects.push(menu);

        start();
    }

    function optionInventory()
    {}

    function optionEquipment()
    {}

    function optionStatus()
    {}

    function optionSave()
    {}

    function optionQuit()
    {}
}
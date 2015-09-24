/**
 * Created by Max on 24.09.2015.
 */
package view.screens {
import flash.events.Event;

public class ScreenEvent extends Event {

    public static const MAIN_CLICK:String = "ScreenEvent.main_click";
    public static const INTRO_CLICK:String = "ScreenEvent.intro_click";
    public static const SAVE_CLICK:String = "ScreenEvent.save_click";
    public static const CHANGE_SCREEN_TO:String = "ScreenEvent.change_screen_to";
    public static const SCREEN_CHANGED:String = "ScreenEvent.screen_changed";
    private var _screenID:String;

    public function ScreenEvent(type:String, screenID:String = "", bubbles:Boolean = false, cancelable:Boolean = false) {
        super(type, bubbles, cancelable);
        _screenID = screenID;
    }


    override public function clone():Event {
        return new ScreenEvent(type, _screenID, bubbles, cancelable);
    }

    public function get screenID():String {
        return _screenID;
    }
}
}

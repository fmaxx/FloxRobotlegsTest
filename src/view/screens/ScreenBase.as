/**
 * Created by Max on 24.09.2015.
 */
package view.screens {
import flash.display.Sprite;

public class ScreenBase extends Sprite {

    private var _id:String;

    public function ScreenBase(id:String) {
        super();
        _id = id;
    }

    public function close():void{
        visible = false;
    }

    public function open():void{
        visible = true;
    }

    public function dispose():void{

    }


    public function get id():String {
        return _id;
    }
}
}

/**
 * Created by Max on 24.09.2015.
 */
package service {
import com.gamua.flox.Entity;

public class SavedDataEntity extends Entity {
    private var _server_date:String;

    public function SavedDataEntity() {
        super();
    }

    public function get server_date():String {
        return _server_date;
    }

    public function set server_date(value:String):void {
        _server_date = value;
    }
}
}

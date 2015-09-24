/**
 * Created by Max on 24.09.2015.
 */
package service {
import com.gamua.flox.Flox;

public class FloxStatService implements IStatsService {
    static private const GAME_ID:String = "GAME_ID";
    static private const GAME_KEY:String = "GAME_KEY";
    static private const VERSION:String = "0.9";
    public function FloxStatService() {
        // init service
        Flox.init(GAME_ID, GAME_KEY, VERSION);
    }

    public function sendEvent(type:String, data:Object = null, callback:Function = null):void {
//        trace("sendEvent : " + type);
        Flox.logEvent(type);
    }

    public function saveData(data:Object, callback:Function = null):void {
        var entity:SavedDataEntity = new SavedDataEntity();
        entity.id = "‘saved_data";
        entity.server_date = "1234567833";
        entity.saveQueued();
    }

    public function get isReady():Boolean {
        return false;
    }
}
}

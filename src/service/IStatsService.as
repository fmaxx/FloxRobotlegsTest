/**
 * Created by Max on 24.09.2015.
 */
package service {
public interface IStatsService {
    function sendEvent(type:String, data:Object = null, callback:/*{ok:Boolean, data:Object = null}*/Function = null):void;
    function saveData(data:Object, callback:/*{ok:Boolean, data:Object = null}*/Function = null):void;

    function get isReady():Boolean;
}
}

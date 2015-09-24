/**
 * Created by Max on 24.09.2015.
 */
package controller {
import flash.events.IEventDispatcher;

import model.ScreensModel;

import robotlegs.bender.extensions.commandCenter.api.ICommand;

import service.IStatsService;

import view.screens.ScreenEvent;
import view.screens.Screens;

public class SaveDataCommand implements ICommand {

    [Inject]
    public var statsService:IStatsService;

    public function execute():void {
        statsService.saveData({test:"test"});
    }
}
}

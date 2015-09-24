/**
 * Created by Max on 24.09.2015.
 */
package {
import controller.ChangeScreenCommand;
import controller.GoIntroClickedCommand;
import controller.GoMainClickedCommand;
import controller.SaveDataCommand;

import flash.events.IEventDispatcher;

import model.ScreensModel;

import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IContext;
import robotlegs.bender.framework.api.IInjector;

import service.FloxStatService;

import service.IStatsService;

import view.View;
import view.screens.IntroScreen;
import view.screens.IntroScreenMediator;
import view.screens.MainScreen;
import view.screens.MainScreenMediator;
import view.screens.ScreenEvent;
import view.screens.Screens;

public class Config implements IConfig {


    [Inject]
    public var injector:IInjector;

    [Inject]
    public var mediatorMap:IMediatorMap;

    [Inject]
    public var commandMap:IEventCommandMap;

    [Inject]
    public var contextView:ContextView;

    [Inject]
    public var eventDispatcher:IEventDispatcher;

    [Inject]
    public var context:IContext;

    public function configure():void {

        injector.map(ScreensModel).asSingleton();
        injector.map(IStatsService).toSingleton(FloxStatService);

        mediatorMap.map(IntroScreen).toMediator(IntroScreenMediator);
        mediatorMap.map(MainScreen).toMediator(MainScreenMediator);

        commandMap.map(ScreenEvent.CHANGE_SCREEN_TO).toCommand(ChangeScreenCommand);
        commandMap.map(ScreenEvent.MAIN_CLICK)      .toCommand(GoMainClickedCommand);
        commandMap.map(ScreenEvent.INTRO_CLICK)     .toCommand(GoIntroClickedCommand);
        commandMap.map(ScreenEvent.SAVE_CLICK)      .toCommand(SaveDataCommand);



        contextView.view.addChild(new View());


        context.afterInitializing(function():void{
            // show intro screen first
            eventDispatcher.dispatchEvent(new ScreenEvent(ScreenEvent.CHANGE_SCREEN_TO, Screens.INTRO));
        })
    }
}
}

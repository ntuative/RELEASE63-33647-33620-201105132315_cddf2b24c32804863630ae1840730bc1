package com.sulake.habbo.widget.roomqueue
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetRoomQueueUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomQueueMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class RoomQueueWidget extends RoomWidgetBase
   {
       
      
      private var _window:IFrameWindow;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1246:int;
      
      private var var_2667:Boolean;
      
      private var var_1910:String;
      
      private var var_1514:Boolean;
      
      private var var_1911:Boolean;
      
      public function RoomQueueWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         this._config = param4;
      }
      
      override public function dispose() : void
      {
         this.removeWindow();
         this._config = null;
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomQueueUpdateEvent.const_422,this.onQueueStatus);
         param1.addEventListener(RoomWidgetRoomQueueUpdateEvent.const_605,this.onQueueStatus);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomQueueUpdateEvent.const_422,this.onQueueStatus);
         param1.removeEventListener(RoomWidgetRoomQueueUpdateEvent.const_605,this.onQueueStatus);
      }
      
      private function removeWindow() : void
      {
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      private function onQueueStatus(param1:RoomWidgetRoomQueueUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.isActive)
         {
            this.var_1910 = param1.type;
            this.var_1514 = false;
            this.var_1246 = param1.position;
         }
         else
         {
            this.var_1514 = true;
         }
         this.var_2667 = param1.hasHabboClub;
         this.var_1911 = param1.isClubQueue;
         localizations.registerParameter("room.queue.position","position",this.var_1246.toString());
         localizations.registerParameter("room.queue.position.hc","position",this.var_1246.toString());
         localizations.registerParameter("room.queue.spectator.position","position",this.var_1246.toString());
         localizations.registerParameter("room.queue.spectator.position.hc","position",this.var_1246.toString());
         this.showInterface();
      }
      
      private function createWindow() : Boolean
      {
         if(this._window != null)
         {
            return true;
         }
         var _loc1_:XmlAsset = assets.getAssetByName("room_queue") as XmlAsset;
         this._window = windowManager.buildFromXML(_loc1_.content as XML) as IFrameWindow;
         if(this._window == null)
         {
            return false;
         }
         this._window.visible = false;
         var _loc2_:IWindow = this._window.findChildByTag("close");
         if(_loc2_ != null)
         {
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.exitQueue);
         }
         _loc2_ = this._window.findChildByName("cancel_button");
         if(_loc2_ != null)
         {
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.exitQueue);
         }
         _loc2_ = this._window.findChildByName("link_text");
         if(_loc2_ != null)
         {
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.openLink);
         }
         _loc2_ = this._window.findChildByName("change_button");
         if(_loc2_ != null)
         {
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.changeQueue);
         }
         this._window.center();
         return true;
      }
      
      private function showInterface() : void
      {
         if(!this.createWindow())
         {
            return;
         }
         var _loc1_:ITextWindow = this._window.findChildByName("info_text") as ITextWindow;
         var _loc2_:IButtonWindow = this._window.findChildByName("change_button") as IButtonWindow;
         var _loc3_:IWindow = this._window.findChildByName("spectator_info");
         if(_loc1_ != null && _loc2_ != null && _loc3_ != null)
         {
            switch(this.var_1910)
            {
               case RoomWidgetRoomQueueUpdateEvent.const_422:
                  _loc1_.caption = !!this.var_1911 ? "${room.queue.position.hc}" : "${room.queue.position}";
                  _loc2_.caption = "${room.queue.spectatormode}";
                  _loc3_.visible = this.var_1514;
                  break;
               case RoomWidgetRoomQueueUpdateEvent.const_605:
                  _loc1_.caption = !!this.var_1911 ? "${room.queue.spectator.position.hc}" : "${room.queue.spectator.position}";
                  _loc2_.caption = "${room.queue.back}";
                  _loc3_.visible = false;
            }
            _loc2_.visible = this.var_1514;
         }
         var _loc4_:IWindowContainer = this._window.findChildByName("club_container") as IWindowContainer;
         if(_loc4_ != null)
         {
            _loc4_.visible = !this.var_2667;
         }
         this._window.visible = true;
      }
      
      private function exitQueue(param1:WindowMouseEvent) : void
      {
         if(messageListener == null)
         {
            return;
         }
         var _loc2_:RoomWidgetRoomQueueMessage = new RoomWidgetRoomQueueMessage(RoomWidgetRoomQueueMessage.const_966);
         messageListener.processWidgetMessage(_loc2_);
         this.removeWindow();
      }
      
      private function openLink(param1:WindowMouseEvent) : void
      {
         messageListener.processWidgetMessage(new RoomWidgetRoomQueueMessage(RoomWidgetRoomQueueMessage.const_826));
      }
      
      private function changeQueue(param1:WindowMouseEvent) : void
      {
         var _loc2_:* = null;
         if(messageListener == null)
         {
            return;
         }
         if(this.var_1910 == RoomWidgetRoomQueueUpdateEvent.const_422)
         {
            _loc2_ = new RoomWidgetRoomQueueMessage(RoomWidgetRoomQueueMessage.CHANGE_TO_SPECTATOR_QUEUE);
         }
         else
         {
            _loc2_ = new RoomWidgetRoomQueueMessage(RoomWidgetRoomQueueMessage.const_831);
         }
         messageListener.processWidgetMessage(_loc2_);
         this.removeWindow();
      }
   }
}

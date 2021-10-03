package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_177:IWindowContainer;
      
      private var var_2956:int;
      
      private var var_390:RoomEventViewCtrl;
      
      private var var_391:Timer;
      
      private var var_145:RoomSettingsCtrl;
      
      private var var_277:RoomThumbnailCtrl;
      
      private var var_1033:TagRenderer;
      
      private var var_392:IWindowContainer;
      
      private var var_389:IWindowContainer;
      
      private var var_673:IWindowContainer;
      
      private var var_1994:IWindowContainer;
      
      private var var_1997:IWindowContainer;
      
      private var var_1283:IWindowContainer;
      
      private var var_913:ITextWindow;
      
      private var var_1034:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_829:ITextWindow;
      
      private var var_1282:ITextWindow;
      
      private var var_1032:ITextWindow;
      
      private var var_832:ITextWindow;
      
      private var var_1560:ITextWindow;
      
      private var var_278:IWindowContainer;
      
      private var var_833:IWindowContainer;
      
      private var var_1564:IWindowContainer;
      
      private var var_1996:ITextWindow;
      
      private var var_674:ITextWindow;
      
      private var var_1995:IWindow;
      
      private var var_1287:IContainerButtonWindow;
      
      private var var_1284:IContainerButtonWindow;
      
      private var var_1286:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1281:IContainerButtonWindow;
      
      private var var_1561:IButtonWindow;
      
      private var var_1562:IButtonWindow;
      
      private var var_1563:IButtonWindow;
      
      private var var_831:IWindowContainer;
      
      private var var_1285:ITextWindow;
      
      private var var_1031:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_830:IButtonWindow;
      
      private var var_2957:String;
      
      private const const_857:int = 75;
      
      private const const_979:int = 3;
      
      private const const_713:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_390 = new RoomEventViewCtrl(this._navigator);
         this.var_145 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_277 = new RoomThumbnailCtrl(this._navigator);
         this.var_1033 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_145);
         this.var_391 = new Timer(6000,1);
         this.var_391.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_391)
         {
            this.var_391.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_391.reset();
            this.var_391 = null;
         }
         this._navigator = null;
         this.var_390 = null;
         this.var_145 = null;
         this.var_277 = null;
         if(this.var_1033)
         {
            this.var_1033.dispose();
            this.var_1033 = null;
         }
         this.var_177 = null;
         this.var_392 = null;
         this.var_389 = null;
         this.var_673 = null;
         this.var_1994 = null;
         this.var_1997 = null;
         this.var_1283 = null;
         this.var_913 = null;
         this.var_1034 = null;
         this._ownerName = null;
         this.var_829 = null;
         this.var_1282 = null;
         this.var_1032 = null;
         this.var_832 = null;
         this.var_1560 = null;
         this.var_278 = null;
         this.var_833 = null;
         this.var_1564 = null;
         this.var_1996 = null;
         this.var_674 = null;
         this.var_1995 = null;
         this.var_1287 = null;
         this.var_1284 = null;
         this.var_1286 = null;
         this._remFavouriteButton = null;
         this.var_1281 = null;
         this.var_1561 = null;
         this.var_1562 = null;
         this.var_1563 = null;
         this.var_831 = null;
         this.var_1285 = null;
         this.var_1031 = null;
         this._buttons = null;
         this.var_830 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function method_8() : void
      {
         this.var_391.reset();
         this.var_390.active = true;
         this.var_145.active = false;
         this.var_277.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_391.reset();
         this.var_145.load(param1);
         this.var_145.active = true;
         this.var_390.active = false;
         this.var_277.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_145.active = true;
         this.var_390.active = false;
         this.var_277.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_391.reset();
         this.var_145.active = false;
         this.var_390.active = false;
         this.var_277.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_391.reset();
         this.var_390.active = false;
         this.var_145.active = false;
         this.var_277.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_979;
         this._window.y = this.const_857;
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_177,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_177.height = Util.getLowestPoint(this.var_177);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_713;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_392);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_145.refresh(this.var_392);
         this.var_277.refresh(this.var_392);
         Util.moveChildrenToColumn(this.var_392,["room_details","room_buttons"],0,2);
         this.var_392.height = Util.getLowestPoint(this.var_392);
         this.var_392.visible = true;
         Logger.log("XORP: " + this.var_389.visible + ", " + this.var_1283.visible + ", " + this.var_673.visible + ", " + this.var_673.rectangle + ", " + this.var_392.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_278);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_390.refresh(this.var_278);
         if(Util.hasVisibleChildren(this.var_278) && !(this.var_145.active || this.var_277.active))
         {
            Util.moveChildrenToColumn(this.var_278,["event_details","event_buttons"],0,2);
            this.var_278.height = Util.getLowestPoint(this.var_278);
            this.var_278.visible = true;
         }
         else
         {
            this.var_278.visible = false;
         }
         Logger.log("EVENT: " + this.var_278.visible + ", " + this.var_278.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "RoomWidgetStopEffectMessage";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_145.active && !this.var_277.active && !this.var_390.active)
         {
            this.var_831.visible = true;
            this.var_1031.text = this.getEmbedData();
         }
         else
         {
            this.var_831.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_145.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_830)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_830.visible = _loc1_;
            if(this.var_2957 == "0")
            {
               this.var_830.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_830.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_145.active || this.var_277.active)
         {
            return;
         }
         this.var_913.text = param1.roomName;
         this.var_913.height = this.var_913.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_829.text = param1.description;
         this.var_1033.refreshTags(this.var_389,param1.tags);
         this.var_829.visible = false;
         if(param1.description != "")
         {
            this.var_829.height = this.var_829.textHeight + 5;
            this.var_829.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1284,"facebook_logo_small",_loc3_,null,0);
         this.var_1284.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1287,"thumb_up",_loc4_,null,0);
         this.var_1287.visible = _loc4_;
         this.var_832.visible = !_loc4_;
         this.var_1560.visible = !_loc4_;
         this.var_1560.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_389,"home",param2,null,0);
         this._navigator.refreshButton(this.var_389,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_389,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_913.y,0);
         this.var_389.visible = true;
         this.var_389.height = Util.getLowestPoint(this.var_389);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_389.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_145.active || this.var_277.active)
         {
            return;
         }
         this.var_1034.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1034.height = this.var_1034.textHeight + 5;
         this.var_1282.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1282.height = this.var_1282.textHeight + 5;
         Util.moveChildrenToColumn(this.var_673,["public_space_name","public_space_desc"],this.var_1034.y,0);
         this.var_673.visible = true;
         this.var_673.height = Math.max(86,Util.getLowestPoint(this.var_673));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_390.active)
         {
            return;
         }
         this.var_1996.text = param1.eventName;
         this.var_674.text = param1.eventDescription;
         this.var_1033.refreshTags(this.var_833,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_674.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_674.height = this.var_674.textHeight + 5;
            this.var_674.y = Util.getLowestPoint(this.var_833) + 2;
            this.var_674.visible = true;
         }
         this.var_833.visible = true;
         this.var_833.height = Util.getLowestPoint(this.var_833);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_145.active || this.var_277.active)
         {
            return;
         }
         this.var_1561.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1286.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1281.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1283.visible = Util.hasVisibleChildren(this.var_1283);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_390.active)
         {
            return;
         }
         this.var_1562.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1563.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1564.visible = Util.hasVisibleChildren(this.var_1564);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_177 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_392 = IWindowContainer(this.find("room_info"));
         this.var_389 = IWindowContainer(this.find("room_details"));
         this.var_673 = IWindowContainer(this.find("public_space_details"));
         this.var_1994 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1997 = IWindowContainer(this.find("rating_cont"));
         this.var_1283 = IWindowContainer(this.find("room_buttons"));
         this.var_913 = ITextWindow(this.find("room_name"));
         this.var_1034 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_829 = ITextWindow(this.find("room_desc"));
         this.var_1282 = ITextWindow(this.find("public_space_desc"));
         this.var_1032 = ITextWindow(this.find("owner_caption"));
         this.var_832 = ITextWindow(this.find("rating_caption"));
         this.var_1560 = ITextWindow(this.find("rating_txt"));
         this.var_278 = IWindowContainer(this.find("event_info"));
         this.var_833 = IWindowContainer(this.find("event_details"));
         this.var_1564 = IWindowContainer(this.find("event_buttons"));
         this.var_1996 = ITextWindow(this.find("event_name"));
         this.var_674 = ITextWindow(this.find("event_desc"));
         this.var_1284 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1287 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1995 = this.find("staff_pick_button");
         this.var_1286 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1281 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1561 = IButtonWindow(this.find("room_settings_button"));
         this.var_1562 = IButtonWindow(this.find("create_event_button"));
         this.var_1563 = IButtonWindow(this.find("edit_event_button"));
         this.var_831 = IWindowContainer(this.find("embed_info"));
         this.var_1285 = ITextWindow(this.find("embed_info_txt"));
         this.var_1031 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_830 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1286,this.onAddFavouriteClick);
         Util.setProcDirectly(this._remFavouriteButton,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1561,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1281,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1562,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1563,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1031,this.onEmbedSrcClick);
         Util.setProcDirectly(this.var_1287,this.onThumbUp);
         Util.setProcDirectly(this.var_1995,this.onStaffPick);
         Util.setProcDirectly(this.var_1284,this.onFacebookLike);
         Util.setProcDirectly(this.var_830,this.onZoomClick);
         this._navigator.refreshButton(this.var_1286,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1281,"home",true,null,0);
         this._window.findChildByTag("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_392,this.onHover);
         Util.setProcDirectly(this.var_278,this.onHover);
         this.var_1032.width = this.var_1032.textWidth;
         Util.moveChildrenToRow(this.var_1994,["owner_caption","owner_name"],this.var_1032.x,this.var_1032.y,3);
         this.var_832.width = this.var_832.textWidth;
         Util.moveChildrenToRow(this.var_1997,["rating_caption","rating_txt"],this.var_832.x,this.var_832.y,3);
         this.var_1285.height = this.var_1285.textHeight + 5;
         Util.moveChildrenToColumn(this.var_831,["embed_info_txt","embed_src_txt"],this.var_1285.y,2);
         this.var_831.height = Util.getLowestPoint(this.var_831) + 5;
         this.var_2956 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.method_8();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function method_16(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1031.setSelection(0,this.var_1031.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_349));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_391.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_145 != null)
         {
            this.var_145.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}

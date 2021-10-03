package com.sulake.habbo.navigator.mainview
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ISelectableWindow;
   import com.sulake.core.window.components.ITabButtonWindow;
   import com.sulake.core.window.components.ITabContextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.navigator.GetOfficialRoomsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.GetPopularRoomTagsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.LatestEventsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyFavouriteRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyFriendsRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyRoomHistorySearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.PopularRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomTagSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomTextSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomsWhereMyFriendsAreSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomsWithHighestScoreSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.room.session.QuitMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.IViewCtrl;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.domain.Tab;
   import com.sulake.habbo.navigator.domain.Tabs;
   import com.sulake.habbo.navigator.events.HabboNavigatorTrackingEvent;
   import com.sulake.habbo.utils.WindowToggle;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class MainViewCtrl implements IUpdateReceiver, IDisposable
   {
      
      public static const const_513:int = 1;
      
      public static const const_733:int = 2;
      
      public static const const_1989:int = 3;
      
      public static const const_1140:int = 4;
      
      private static const const_1027:int = 1;
      
      private static const const_650:int = 2;
      
      private static const const_1028:int = 3;
      
      private static const const_1440:int = 4;
      
      private static const SCROLLBAR_WIDTH:int = 22;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_17:IFrameWindow;
      
      private var var_177:IWindowContainer;
      
      private var var_228:IWindowContainer;
      
      private var var_255:IWindowContainer;
      
      private var var_204:IWindowContainer;
      
      private var var_955:PopularTagsListCtrl;
      
      private var var_954:GuestRoomListCtrl;
      
      private var var_1181:OfficialRoomListCtrl;
      
      private var var_269:ITabContextWindow;
      
      private var var_1819:Boolean;
      
      private var var_612:int;
      
      private var var_1180:Boolean = true;
      
      private var var_1447:int = 0;
      
      private var var_1448:IWindow;
      
      private var var_769:IRegionWindow;
      
      private var var_2489:int = 0;
      
      private var var_494:Timer;
      
      private var _disposed:Boolean = false;
      
      private var var_725:WindowToggle;
      
      private const const_1939:Point = new Point(100,10);
      
      public function MainViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_955 = new PopularTagsListCtrl(this._navigator);
         this.var_954 = new GuestRoomListCtrl(this._navigator);
         this.var_1181 = new OfficialRoomListCtrl(this._navigator);
         this.var_494 = new Timer(300,1);
         this.var_494.addEventListener(TimerEvent.TIMER,this.onResizeTimer);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function onNavigatorToolBarIconClick() : Boolean
      {
         if(!this.var_17)
         {
            this.reloadData();
            return true;
         }
         if(!this.var_725 || this.var_725.disposed)
         {
            this.var_725 = new WindowToggle(this.var_17,this.var_17.desktop,this.reloadData,this.close);
         }
         var _loc1_:int = this.var_725.toggle();
         return _loc1_ == WindowToggle.RESULT_SHOW;
      }
      
      private function reloadData() : void
      {
         var _loc1_:Tab = this._navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.navigatorOpenedWhileInTab();
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this._navigator = null;
            if(this.var_17)
            {
               this.var_17.dispose();
               this.var_17 = null;
            }
            if(this.var_725)
            {
               this.var_725.dispose();
               this.var_725 = null;
            }
            if(this.var_177)
            {
               this.var_177.dispose();
               this.var_177 = null;
            }
            if(this.var_494)
            {
               this.var_494.removeEventListener(TimerEvent.TIMER,this.onResizeTimer);
               this.var_494.reset();
               this.var_494 = null;
            }
            if(this.var_955)
            {
               this.var_955.dispose();
               this.var_955 = null;
            }
            if(this.var_954)
            {
               this.var_954.dispose();
               this.var_954 = null;
            }
            if(this.var_1181)
            {
               this.var_1181.dispose();
               this.var_1181 = null;
            }
         }
      }
      
      public function open() : void
      {
         if(this.var_17 == null)
         {
            this.prepare();
         }
         this.refresh();
         this.var_17.visible = true;
         this.var_17.activate();
      }
      
      public function isOpen() : Boolean
      {
         return this.var_17 != null && this.var_17.visible;
      }
      
      public function close() : void
      {
         if(this.var_17 != null)
         {
            this.var_17.visible = false;
         }
      }
      
      public function get mainWindow() : IFrameWindow
      {
         return this.var_17;
      }
      
      private function prepare() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         this.var_17 = IFrameWindow(this._navigator.getXmlWindow("grs_main_window"));
         this.var_269 = ITabContextWindow(this.var_17.findChildByName("tab_context"));
         this.var_177 = IWindowContainer(this.var_17.findChildByName("tab_content"));
         this.var_228 = IWindowContainer(this.var_17.findChildByName("custom_content"));
         this.var_204 = IWindowContainer(this.var_17.findChildByName("list_content"));
         this.var_255 = IWindowContainer(this.var_17.findChildByName("custom_footer"));
         this.var_1448 = this.var_17.findChildByName("loading_text");
         var _loc1_:IWindow = this.var_17.findChildByTag("close");
         if(_loc1_ != null)
         {
            _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onWindowClose);
         }
         this.var_769 = IRegionWindow(this.var_17.findChildByName("to_hotel_view"));
         if(this.var_769 != null)
         {
            this.var_769.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onHotelViewMouseOver);
            this.var_769.addEventListener(WindowMouseEvent.const_25,this.onHotelViewMouseOut);
            this.var_769.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onHotelViewMouseClick);
         }
         this.refreshToHotelViewButton(false);
         this.var_17.addEventListener(WindowEvent.const_39,this.onWindowResized);
         for each(_loc2_ in this._navigator.tabs.tabs)
         {
            _loc3_ = this.var_269.getTabItemByID(_loc2_.id);
            if(_loc3_ != null)
            {
               _loc3_.addEventListener(WindowEvent.const_49,this.onTabSelected);
               _loc2_.button = _loc3_;
            }
         }
         this.var_17.scaler.setParamFlag(HabboWindowParam.const_759,false);
         this.var_17.scaler.setParamFlag(HabboWindowParam.const_1663,true);
         this.var_17.position = this.const_1939;
      }
      
      public function refresh() : void
      {
         if(this.var_17 == null)
         {
            return;
         }
         this.refreshTab();
         this.refreshCustomContent();
         this.refreshListContent(true);
         this.refreshFooter();
         this.var_228.height = Util.getLowestPoint(this.var_228);
         this.var_255.height = Util.getLowestPoint(this.var_255);
         var _loc1_:int = this.var_204.y;
         Util.moveChildrenToColumn(this.var_177,["custom_content","list_content"],this.var_228.y,8);
         this.var_204.height = this.var_204.height + _loc1_ - this.var_204.y - this.var_255.height + this.var_2489;
         Util.moveChildrenToColumn(this.var_177,["list_content","custom_footer"],this.var_204.y,0);
         this.var_2489 = this.var_255.height;
         this.onResizeTimer(null);
      }
      
      private function refreshTab() : void
      {
         var _loc1_:Tab = this._navigator.tabs.getSelected();
         var _loc2_:ISelectableWindow = this.var_269.selector.getSelected();
         if(_loc1_.button != _loc2_)
         {
            this.var_1819 = true;
            this.var_269.selector.setSelected(_loc1_.button);
         }
      }
      
      private function refreshCustomContent() : void
      {
         Util.hideChildren(this.var_228);
         var _loc1_:Tab = this._navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.refreshCustomContent(this.var_228);
         if(Util.hasVisibleChildren(this.var_228))
         {
            this.var_228.visible = true;
         }
         else
         {
            this.var_228.visible = false;
            this.var_228.blend = 1;
         }
      }
      
      private function refreshFooter() : void
      {
         Util.hideChildren(this.var_255);
         var _loc1_:Tab = this._navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.refreshFooter(this.var_255);
         if(Util.hasVisibleChildren(this.var_255))
         {
            this.var_255.visible = true;
         }
         else
         {
            this.var_255.visible = false;
         }
      }
      
      private function refreshListContent(param1:Boolean) : void
      {
         Util.hideChildren(this.var_204);
         this.refreshGuestRooms(param1,this._navigator.data.guestRoomSearchArrived);
         this.refreshPopularTags(param1,this._navigator.data.popularTagsArrived);
         this.refreshOfficialRooms(param1,this._navigator.data.officialRoomsArrived);
      }
      
      private function refreshGuestRooms(param1:Boolean, param2:Boolean) : void
      {
         this.refreshList(param1,param2,this.var_954,"guest_rooms");
      }
      
      private function refreshPopularTags(param1:Boolean, param2:Boolean) : void
      {
         this.refreshList(param1,param2,this.var_955,"popular_tags");
      }
      
      private function refreshOfficialRooms(param1:Boolean, param2:Boolean) : void
      {
         this.refreshList(param1,param2,this.var_1181,"official_rooms");
      }
      
      private function refreshList(param1:Boolean, param2:Boolean, param3:IViewCtrl, param4:String) : void
      {
         var _loc5_:* = null;
         if(param2)
         {
            if(param3.content == null)
            {
               _loc5_ = this.var_204.getChildByName(param4);
               param3.content = IWindowContainer(_loc5_);
            }
            if(param1)
            {
               param3.refresh();
            }
            param3.content.visible = true;
         }
      }
      
      private function onWindowClose(param1:WindowEvent) : void
      {
         Logger.log("Close navigator window");
         this.close();
      }
      
      private function onTabSelected(param1:WindowEvent) : void
      {
         var _loc2_:IWindow = param1.target;
         var _loc3_:int = _loc2_.id;
         if(this.var_1819)
         {
            this.var_1819 = false;
            return;
         }
         var _loc4_:Tab = this._navigator.tabs.getTab(_loc3_);
         _loc4_.sendSearchRequest();
         switch(_loc4_.id)
         {
            case Tabs.const_360:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_EVENTS));
               break;
            case Tabs.const_268:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ME));
               break;
            case Tabs.const_353:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_OFFICIAL));
               break;
            case Tabs.const_206:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ROOMS));
               break;
            case Tabs.const_194:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCH));
         }
      }
      
      public function reloadRoomList(param1:int) : Boolean
      {
         ErrorReportStorage.addDebugData("MainViewCtrl","Reloading RoomList");
         if(this.isOpen() && this._navigator.data.guestRoomSearchResults != null && this._navigator.data.guestRoomSearchResults.searchType == param1)
         {
            this.startSearch(this._navigator.tabs.getSelected().id,param1,"");
            return true;
         }
         return false;
      }
      
      public function startSearch(param1:int, param2:int, param3:String = "-1", param4:int = 1) : void
      {
         var _loc5_:Tab = this._navigator.tabs.getSelected();
         this._navigator.tabs.setSelectedTab(param1);
         var _loc6_:Tab = this._navigator.tabs.getSelected();
         ErrorReportStorage.addDebugData("StartSearch","Start search " + _loc5_.id + " => " + _loc6_.id);
         this.var_1180 = _loc5_ != _loc6_;
         if(_loc5_ != _loc6_)
         {
            _loc6_.tabPageDecorator.tabSelected();
         }
         this._navigator.data.startLoading();
         if(param4 == const_513)
         {
            this._navigator.send(this.getSearchMsg(param2,param3));
         }
         else if(param4 == const_733)
         {
            this._navigator.send(new GetPopularRoomTagsMessageComposer());
         }
         else
         {
            this._navigator.send(new GetOfficialRoomsMessageComposer());
         }
         if(!this.isOpen())
         {
            this.open();
            this.var_612 = const_650;
            this.var_204.blend = 0;
            if(this.var_228.visible)
            {
               this.var_228.blend = 0;
               this.var_255.blend = 0;
            }
         }
         else
         {
            this.var_612 = const_1027;
         }
         this.var_1447 = 0;
         this._navigator.registerUpdateReceiver(this,2);
         this.sendTrackingEvent(param2);
      }
      
      private function sendTrackingEvent(param1:int) : void
      {
         switch(param1)
         {
            case Tabs.const_591:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_LATEST_EVENTS));
               break;
            case Tabs.const_896:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FAVOURITES));
               break;
            case Tabs.const_796:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FRIENDS_ROOMS));
               break;
            case Tabs.const_965:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_HISTORY));
               break;
            case Tabs.const_254:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_ROOMS));
               break;
            case Tabs.const_879:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_OFFICIALROOMS));
               break;
            case Tabs.const_381:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_POPULAR_ROOMS));
               break;
            case Tabs.const_693:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WHERE_MY_FRIENDS_ARE));
               break;
            case Tabs.const_813:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WITH_HIGHEST_SCORE));
               break;
            case Tabs.const_411:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TAG_SEARCH));
               break;
            case Tabs.const_275:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TEXT_SEARCH));
         }
      }
      
      private function getSearchMsg(param1:int, param2:String) : IMessageComposer
      {
         if(param1 == Tabs.const_896)
         {
            return new MyFavouriteRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_796)
         {
            return new MyFriendsRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_965)
         {
            return new MyRoomHistorySearchMessageComposer();
         }
         if(param1 == Tabs.const_254)
         {
            return new MyRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_381)
         {
            return new PopularRoomsSearchMessageComposer(param2,this._navigator.data.adIndex);
         }
         if(param1 == Tabs.const_693)
         {
            return new RoomsWhereMyFriendsAreSearchMessageComposer();
         }
         if(param1 == Tabs.const_813)
         {
            return new RoomsWithHighestScoreSearchMessageComposer(this._navigator.data.adIndex);
         }
         if(param1 == Tabs.const_411)
         {
            return new RoomTagSearchMessageComposer(param2);
         }
         if(param1 == Tabs.const_275)
         {
            return new RoomTextSearchMessageComposer(param2);
         }
         if(param1 == Tabs.const_591)
         {
            return new LatestEventsSearchMessageComposer(param2,this._navigator.data.adIndex);
         }
         Logger.log("No message for searchType: " + param1);
         return null;
      }
      
      public function update(param1:uint) : void
      {
         var _loc3_:Number = NaN;
         if(this.var_204 == null)
         {
            return;
         }
         var _loc2_:Number = param1 / 150;
         if(this.var_612 == const_1027)
         {
            _loc3_ = Math.min(1,Math.max(0,this.var_204.blend - _loc2_));
            this.var_204.blend = _loc3_;
            this.var_228.blend = !!this.var_1180 ? Number(_loc3_) : Number(1);
            this.var_255.blend = !!this.var_1180 ? Number(_loc3_) : Number(1);
            if(_loc3_ == 0)
            {
               this.var_612 = const_650;
            }
         }
         else if(this.var_612 == const_650)
         {
            if(this.var_1447 % 10 == 1)
            {
               this.var_1448.visible = !this.var_1448.visible;
            }
            ++this.var_1447;
            if(!this._navigator.data.isLoading())
            {
               this.var_612 = const_1028;
            }
         }
         else if(this.var_612 == const_1028)
         {
            this.refresh();
            this.var_612 = const_1440;
         }
         else
         {
            this.var_1448.visible = false;
            _loc3_ = Math.min(1,Math.max(0,this.var_204.blend + _loc2_));
            this.var_204.blend = _loc3_;
            this.var_228.blend = !!this.var_1180 ? Number(_loc3_) : Number(1);
            this.var_255.blend = !!this.var_1180 ? Number(_loc3_) : Number(1);
            if(this.var_204.blend >= 1)
            {
               this._navigator.removeUpdateReceiver(this);
            }
         }
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         var _loc2_:IWindow = param1.target;
         if(_loc2_ != this.var_17)
         {
            return;
         }
         if(!this.var_494.running)
         {
            this.var_494.reset();
            this.var_494.start();
         }
      }
      
      private function onResizeTimer(param1:TimerEvent) : void
      {
         this.refreshScrollbar(this.var_955);
         this.refreshScrollbar(this.var_954);
      }
      
      private function refreshScrollbar(param1:IViewCtrl) : void
      {
         if(param1.content == null || !param1.content.visible)
         {
            return;
         }
         var _loc2_:IItemListWindow = IItemListWindow(param1.content.findChildByName("item_list"));
         var _loc3_:IWindow = param1.content.findChildByName("scroller");
         var _loc4_:* = _loc2_.scrollableRegion.height > _loc2_.height;
         if(_loc3_.visible)
         {
            if(_loc4_)
            {
               return;
            }
            _loc3_.visible = false;
            _loc2_.width += SCROLLBAR_WIDTH;
         }
         else
         {
            if(!_loc4_)
            {
               return;
            }
            _loc3_.visible = true;
            _loc2_.width -= SCROLLBAR_WIDTH;
         }
      }
      
      public function stretchNewEntryIfNeeded(param1:IViewCtrl, param2:IWindowContainer) : void
      {
         var _loc3_:IWindow = param1.content.findChildByName("scroller");
         if(_loc3_.visible)
         {
            return;
         }
         param2.width += SCROLLBAR_WIDTH;
      }
      
      private function refreshToHotelViewButton(param1:Boolean) : void
      {
         this._navigator.refreshButton(this.var_769,"icon_hotelview",!param1,null,0);
         this._navigator.refreshButton(this.var_769,"icon_hotelview_reactive",param1,null,0);
      }
      
      private function onHotelViewMouseOver(param1:WindowEvent) : void
      {
         this.refreshToHotelViewButton(true);
      }
      
      private function onHotelViewMouseOut(param1:WindowEvent) : void
      {
         this.refreshToHotelViewButton(false);
      }
      
      private function onHotelViewMouseClick(param1:WindowEvent) : void
      {
         this._navigator.send(new QuitMessageComposer());
      }
   }
}

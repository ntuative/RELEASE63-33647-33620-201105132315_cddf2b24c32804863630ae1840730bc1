package com.sulake.habbo.moderation
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.moderation.ChatlineData;
   import com.sulake.habbo.communication.messages.incoming.moderation.RoomChatlogData;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class ChatlogCtrl implements IDisposable, TrackedWindow
   {
      
      private static var var_1006:Array = [];
      
      private static var var_1917:int = 1000;
      
      private static var var_1007:Array = [];
      
      private static var var_1915:int = 200;
       
      
      private var _type:int;
      
      private var _id:int;
      
      private var var_1914:IMessageComposer;
      
      private var var_35:ModerationManager;
      
      private var _frame:IFrameWindow;
      
      private var var_60:IItemListWindow;
      
      private var var_120:Array;
      
      private var _disposed:Boolean;
      
      private var var_803:IWindowContainer;
      
      private var var_804:IWindowContainer;
      
      private var var_1916:Dictionary;
      
      private var var_494:Timer;
      
      private var var_1517:Map;
      
      private var var_1518:Array;
      
      private var var_1516:Array;
      
      public function ChatlogCtrl(param1:IMessageComposer, param2:ModerationManager, param3:int, param4:int)
      {
         this.var_1518 = [];
         this.var_1516 = [];
         super();
         this.var_35 = param2;
         this._type = param3;
         this._id = param4;
         this.var_1914 = param1;
         this.var_1517 = new Map();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function show() : void
      {
         this.var_803 = IWindowContainer(this.var_35.getXmlWindow("chatlog_roomheader"));
         this.var_804 = IWindowContainer(this.var_35.getXmlWindow("chatlog_chatline"));
         this.var_494 = new Timer(1000,1);
         this.var_494.addEventListener(TimerEvent.TIMER,this.onResizeTimer);
         this._frame = IFrameWindow(this.var_35.getXmlWindow("chatlog_frame"));
         this.var_60 = IItemListWindow(this._frame.findChildByName("chatline_list"));
         this._frame.procedure = this.onWindow;
         var _loc1_:IWindow = this._frame.findChildByTag("close");
         _loc1_.procedure = this.onClose;
         this.var_35.connection.send(this.var_1914);
         this.var_35.messageHandler.addChatlogListener(this);
      }
      
      public function onChatlog(param1:String, param2:int, param3:int, param4:Array, param5:Dictionary) : void
      {
         if(param2 != this._type || param3 != this._id || this._disposed)
         {
            return;
         }
         this.var_35.messageHandler.removeChatlogListener(this);
         this._frame.caption = param1;
         this.var_120 = param4;
         this.var_1916 = param5;
         this.populate();
         this.onResizeTimer(null);
         this._frame.visible = true;
      }
      
      public function getType() : int
      {
         return this._type;
      }
      
      public function getId() : String
      {
         return "" + this._id;
      }
      
      public function getFrame() : IFrameWindow
      {
         return this._frame;
      }
      
      private function populate() : void
      {
         var _loc1_:* = null;
         this.var_60.autoArrangeItems = false;
         for each(_loc1_ in this.var_120)
         {
            this.populateRoomChat(_loc1_);
         }
         this.var_60.autoArrangeItems = true;
      }
      
      private function populateRoomChat(param1:RoomChatlogData) : void
      {
         var _loc5_:* = null;
         var _loc2_:IWindowContainer = this.getChatHeaderWindow();
         var _loc3_:ITextWindow = ITextWindow(_loc2_.findChildByName("room_name_txt"));
         if(param1.roomId > 0)
         {
            _loc3_.caption = param1.roomName;
            _loc3_.underline = true;
            new OpenRoomTool(this._frame,this.var_35,_loc3_,param1.isPublic,param1.roomId);
         }
         else
         {
            _loc3_.caption = "Not in room";
            _loc3_.underline = false;
         }
         this.addHeaderLineToList(_loc2_,this.var_60);
         var _loc4_:* = true;
         for each(_loc5_ in param1.chatlog)
         {
            this.populateChatline(this.var_60,_loc5_,_loc4_);
            _loc4_ = !_loc4_;
         }
      }
      
      private function addChatLineToList(param1:IWindowContainer, param2:IItemListWindow) : void
      {
         param2.addListItem(param1);
         this.var_1518.push(param1);
      }
      
      private function addHeaderLineToList(param1:IWindowContainer, param2:IItemListWindow) : void
      {
         param2.addListItem(param1);
         this.var_1516.push(param1);
      }
      
      private function getChatLineWindow() : IWindowContainer
      {
         if(false)
         {
            return var_1006.pop() as IWindowContainer;
         }
         return IWindowContainer(this.var_804.clone());
      }
      
      private function storeChatLineWindow(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         if(var_1006.length < var_1917)
         {
            _loc2_ = ITextWindow(param1.findChildByName("chatter_txt"));
            _loc2_.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onChatLogUserClick);
            param1.width = this.var_804.width;
            param1.height = this.var_804.height;
            var_1006.push(param1);
         }
         else
         {
            param1.dispose();
         }
      }
      
      private function getChatHeaderWindow() : IWindowContainer
      {
         if(false)
         {
            return var_1007.pop() as IWindowContainer;
         }
         return IWindowContainer(this.var_803.clone());
      }
      
      private function storeChatHeaderWindow(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         if(var_1007.length < var_1915)
         {
            _loc2_ = ITextWindow(param1.findChildByName("room_name_txt"));
            _loc2_.procedure = null;
            param1.width = this.var_803.width;
            param1.height = this.var_803.height;
            var_1007.push(param1);
         }
         else
         {
            param1.dispose();
         }
      }
      
      private function populateChatline(param1:IItemListWindow, param2:ChatlineData, param3:Boolean) : void
      {
         var _loc4_:IWindowContainer = this.getChatLineWindow();
         _loc4_.color = this.var_1916[param2.chatterId] != null ? (!!param3 ? 4294623571 : uint(4294959680)) : (!!param3 ? 4288861930 : uint(4294967295));
         var _loc5_:ITextWindow = ITextWindow(_loc4_.findChildByName("time_txt"));
         _loc5_.text = RoomVisitsCtrl.getFormattedTime(param2.hour,param2.minute);
         var _loc6_:ITextWindow = ITextWindow(_loc4_.findChildByName("chatter_txt"));
         _loc6_.color = _loc4_.color;
         if(param2.chatterId > 0)
         {
            _loc6_.text = param2.chatterName;
            _loc6_.underline = true;
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onChatLogUserClick);
            if(!this.var_1517.getValue(param2.chatterName))
            {
               this.var_1517.add(param2.chatterName,param2.chatterId);
            }
         }
         else if(param2.chatterId == 0)
         {
            _loc6_.text = "Bot / pet";
            _loc6_.underline = false;
         }
         else
         {
            _loc6_.text = "-";
            _loc6_.underline = false;
         }
         var _loc7_:ITextWindow = ITextWindow(_loc4_.findChildByName("msg_txt"));
         _loc7_.text = param2.msg;
         _loc7_.height = _loc7_.textHeight + 5;
         _loc4_.height = _loc7_.height;
         this.addChatLineToList(_loc4_,param1);
      }
      
      private function onChatLogUserClick(param1:WindowMouseEvent) : void
      {
         var _loc2_:String = param1.target.caption;
         var _loc3_:int = this.var_1517.getValue(_loc2_);
         this.var_35.windowTracker.show(new UserInfoFrameCtrl(this.var_35,_loc3_),this._frame,false,false,true);
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.dispose();
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_39 || param2 != this._frame)
         {
            return;
         }
         this.var_494.reset();
         this.var_494.start();
      }
      
      private function onResizeTimer(param1:TimerEvent) : void
      {
         this.refreshListDims();
         var _loc2_:Boolean = this.refreshScrollBarVisibility();
      }
      
      private function refreshListDims() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         this.var_60.autoArrangeItems = false;
         var _loc3_:int = this.var_60.numListItems;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc1_ = IWindowContainer(this.var_60.getListItemAt(_loc4_));
            if(_loc1_.name == "chatline")
            {
               _loc2_ = ITextWindow(_loc1_.findChildByName("msg_txt"));
               _loc2_.width = _loc1_.width - _loc2_.x;
               _loc2_.height = _loc2_.textHeight + 5;
               _loc1_.height = _loc2_.height;
            }
            _loc4_++;
         }
         this.var_60.autoArrangeItems = true;
      }
      
      private function refreshScrollBarVisibility() : Boolean
      {
         var _loc1_:IWindowContainer = IWindowContainer(this.var_60.parent);
         var _loc2_:IWindow = _loc1_.getChildByName("scroller") as IWindow;
         var _loc3_:* = this.var_60.scrollableRegion.height > this.var_60.height;
         if(_loc2_.visible)
         {
            if(_loc3_)
            {
               return false;
            }
            _loc2_.visible = false;
            this.var_60.width += 22;
            return true;
         }
         if(_loc3_)
         {
            _loc2_.visible = true;
            this.var_60.width -= 22;
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_35 = null;
         this.var_1914 = null;
         if(this.var_60 != null)
         {
            this.var_60.removeListItems();
            this.var_60.dispose();
            this.var_60 = null;
         }
         if(this._frame != null)
         {
            this._frame.destroy();
            this._frame = null;
         }
         this.var_120 = null;
         this.var_1916 = null;
         if(this.var_494 != null)
         {
            this.var_494.stop();
            this.var_494.removeEventListener(TimerEvent.TIMER,this.onResizeTimer);
            this.var_494 = null;
         }
         for each(_loc1_ in this.var_1518)
         {
            this.storeChatLineWindow(_loc1_);
         }
         for each(_loc1_ in this.var_1516)
         {
            this.storeChatHeaderWindow(_loc1_);
         }
         this.var_1518 = [];
         this.var_1516 = [];
         if(this.var_803 != null)
         {
            this.var_803.dispose();
            this.var_803 = null;
         }
         if(this.var_804 != null)
         {
            this.var_804.dispose();
            this.var_804 = null;
         }
      }
   }
}

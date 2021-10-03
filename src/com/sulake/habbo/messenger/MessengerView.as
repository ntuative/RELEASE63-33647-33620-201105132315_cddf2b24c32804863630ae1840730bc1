package com.sulake.habbo.messenger
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.SendMsgMessageComposer;
   import com.sulake.habbo.messenger.domain.Conversation;
   import com.sulake.habbo.messenger.domain.Message;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class MessengerView implements IDisposable
   {
       
      
      private var var_146:HabboMessenger;
      
      private var var_1054:ConversationsTabView;
      
      private var var_1026:ITextFieldWindow;
      
      private var var_17:IFrameWindow;
      
      private var var_1591:ConversationView;
      
      private var var_494:Timer;
      
      private var _disposed:Boolean = false;
      
      public function MessengerView(param1:HabboMessenger)
      {
         super();
         this.var_146 = param1;
         this.var_494 = new Timer(300,1);
         this.var_494.addEventListener(TimerEvent.TIMER,this.onResizeTimer);
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_494)
            {
               this.var_494.stop();
               this.var_494.removeEventListener(TimerEvent.TIMER,this.onResizeTimer);
               this.var_494 = null;
            }
            this.var_146 = null;
            this._disposed = true;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function isMessengerOpen() : Boolean
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
      
      public function openMessenger() : void
      {
         if(this.var_146.conversations.openConversations.length < 1)
         {
            return;
         }
         if(this.var_17 == null)
         {
            this.prepareContent();
            this.refresh();
         }
         else
         {
            this.refresh();
            this.var_17.visible = true;
            this.var_17.activate();
         }
      }
      
      public function refresh() : void
      {
         if(this.var_17 == null)
         {
            return;
         }
         var _loc1_:Conversation = this.var_146.conversations.findSelectedConversation();
         this.var_17.caption = _loc1_ == null ? "" : _loc1_.name;
         this.var_1054.refresh();
         this.var_1591.refresh();
         if(this.var_146.conversations.openConversations.length < 1)
         {
            this.var_17.visible = false;
         }
      }
      
      public function addMsgToView(param1:Conversation, param2:Message) : void
      {
         if(this.var_17 == null)
         {
            return;
         }
         if(!param1.selected)
         {
            return;
         }
         this.var_1591.addMessage(param2);
      }
      
      private function prepareContent() : void
      {
         this.var_17 = IFrameWindow(this.var_146.getXmlWindow("main_window"));
         var _loc1_:IWindow = this.var_17.findChildByTag("close");
         _loc1_.procedure = this.onWindowClose;
         this.var_17.procedure = this.onWindow;
         this.var_17.title.color = 4294623744;
         this.var_17.title.textColor = 4287851525;
         this.var_1054 = new ConversationsTabView(this.var_146,this.var_17);
         this.var_1054.refresh();
         this.var_1026 = ITextFieldWindow(this.var_17.findChildByName("message_input"));
         this.var_1026.addEventListener(WindowKeyboardEvent.const_214,this.onMessageInput);
         this.var_1591 = new ConversationView(this.var_146,this.var_17);
         this.var_17.scaler.setParamFlag(HabboWindowParam.const_759,false);
         this.var_17.scaler.setParamFlag(HabboWindowParam.const_1143,true);
         this.var_17.center();
      }
      
      private function onMessageInput(param1:WindowKeyboardEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(param1.charCode == Keyboard.ENTER)
         {
            this.sendMsg();
         }
         else
         {
            _loc2_ = 120;
            _loc3_ = this.var_1026.text;
            if(_loc3_.length > _loc2_)
            {
               this.var_1026.text = _loc3_.substring(0,_loc2_);
            }
         }
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_39 || param2 != this.var_17)
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
         Logger.log("XXX RESIZE XXX");
         this.var_1591.afterResize();
         this.var_1054.refresh();
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         this.var_17.visible = false;
      }
      
      private function sendMsg() : void
      {
         var _loc1_:String = this.var_1026.text;
         Logger.log("Send msg: " + _loc1_);
         if(_loc1_ == "")
         {
            Logger.log("No text...");
            return;
         }
         var _loc2_:Conversation = this.var_146.conversations.findSelectedConversation();
         if(_loc2_ == null)
         {
            Logger.log("No conversation...");
            return;
         }
         this.var_146.send(new SendMsgMessageComposer(_loc2_.id,_loc1_));
         if(_loc2_.messages.length == 1)
         {
            this.var_146.playSendSound();
         }
         this.var_1026.text = "";
         this.var_146.conversations.addMessageAndUpdateView(new Message(Message.const_953,_loc2_.id,_loc1_,Util.getFormattedNow()));
      }
      
      public function getTabCount() : int
      {
         return this.var_1054 == null ? 7 : int(this.var_1054.getTabCount());
      }
   }
}

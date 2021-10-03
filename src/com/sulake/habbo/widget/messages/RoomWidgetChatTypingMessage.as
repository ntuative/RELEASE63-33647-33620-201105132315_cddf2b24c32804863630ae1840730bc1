package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_916:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_591:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_916);
         this.var_591 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_591;
      }
   }
}

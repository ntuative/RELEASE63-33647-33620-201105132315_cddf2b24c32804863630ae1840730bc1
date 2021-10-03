package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarTypingUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_591:Boolean;
      
      public function RoomObjectAvatarTypingUpdateMessage(param1:Boolean = false)
      {
         super();
         this.var_591 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_591;
      }
   }
}

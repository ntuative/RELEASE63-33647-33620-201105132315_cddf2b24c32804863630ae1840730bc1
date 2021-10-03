package com.sulake.habbo.communication.messages.outgoing.room.session
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class ChangeQueueMessageComposer implements IMessageComposer
   {
       
      
      private var var_2228:int;
      
      public function ChangeQueueMessageComposer(param1:int)
      {
         super();
         this.var_2228 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2228];
      }
      
      public function dispose() : void
      {
      }
      
      public function get disposed() : Boolean
      {
         return true;
      }
   }
}

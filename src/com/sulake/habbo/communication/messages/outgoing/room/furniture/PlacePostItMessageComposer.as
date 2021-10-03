package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PlacePostItMessageComposer implements IMessageComposer
   {
       
      
      private var var_1702:int;
      
      private var var_467:String;
      
      public function PlacePostItMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_1702 = param1;
         this.var_467 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1702,this.var_467];
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_2592:String;
      
      private var var_2029:int;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2592 = param1.readString();
         this.var_2029 = param1.readInteger();
      }
      
      public function get productItemType() : String
      {
         return this.var_2592;
      }
      
      public function get productItemTypeId() : int
      {
         return this.var_2029;
      }
   }
}

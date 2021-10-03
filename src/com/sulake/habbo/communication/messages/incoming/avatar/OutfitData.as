package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2021:int;
      
      private var var_2571:String;
      
      private var var_1044:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2021 = param1.readInteger();
         this.var_2571 = param1.readString();
         this.var_1044 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_2021;
      }
      
      public function get figureString() : String
      {
         return this.var_2571;
      }
      
      public function get gender() : String
      {
         return this.var_1044;
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2542:int;
      
      private var var_2543:int;
      
      private var var_1126:int;
      
      private var var_1125:int;
      
      private var var_1689:int;
      
      private var var_2544:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2542 = param1.readInteger();
         this.var_2543 = param1.readInteger();
         this.var_1126 = param1.readInteger();
         this.var_1125 = param1.readInteger();
         this.var_1689 = param1.readInteger();
         this.var_2544 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2542;
      }
      
      public function get charges() : int
      {
         return this.var_2543;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1126;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1125;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2544;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1689;
      }
   }
}

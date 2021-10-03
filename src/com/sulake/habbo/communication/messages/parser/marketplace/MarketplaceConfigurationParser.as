package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1578:Boolean;
      
      private var var_2264:int;
      
      private var var_2041:int;
      
      private var var_2042:int;
      
      private var var_2262:int;
      
      private var var_2261:int;
      
      private var var_2263:int;
      
      private var var_2265:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1578;
      }
      
      public function get commission() : int
      {
         return this.var_2264;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2041;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2042;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2261;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2262;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2263;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2265;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1578 = param1.readBoolean();
         this.var_2264 = param1.readInteger();
         this.var_2041 = param1.readInteger();
         this.var_2042 = param1.readInteger();
         this.var_2261 = param1.readInteger();
         this.var_2262 = param1.readInteger();
         this.var_2263 = param1.readInteger();
         this.var_2265 = param1.readInteger();
         return true;
      }
   }
}

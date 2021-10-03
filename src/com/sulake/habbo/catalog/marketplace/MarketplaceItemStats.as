package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2248:int;
      
      private var var_2456:int;
      
      private var var_2454:int;
      
      private var _dayOffsets:Array;
      
      private var var_1793:Array;
      
      private var var_1794:Array;
      
      private var var_2457:int;
      
      private var var_2455:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2248;
      }
      
      public function get offerCount() : int
      {
         return this.var_2456;
      }
      
      public function get historyLength() : int
      {
         return this.var_2454;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1793;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1794;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2457;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2455;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2248 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2456 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2454 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1793 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1794 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2457 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2455 = param1;
      }
   }
}

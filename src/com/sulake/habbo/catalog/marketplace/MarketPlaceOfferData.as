package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_109:int = 1;
      
      public static const const_71:int = 2;
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2247:int;
      
      private var var_2132:String;
      
      private var var_1967:int;
      
      private var var_2248:int;
      
      private var var_2751:int;
      
      private var var_408:int;
      
      private var var_2246:int = -1;
      
      private var var_1966:int;
      
      private var var_46:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2247 = param3;
         this.var_2132 = param4;
         this.var_1967 = param5;
         this.var_408 = param6;
         this.var_2248 = param7;
         this.var_1966 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_46)
         {
            this.var_46.dispose();
            this.var_46 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2247;
      }
      
      public function get stuffData() : String
      {
         return this.var_2132;
      }
      
      public function get price() : int
      {
         return this.var_1967;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2248;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_46 != null)
         {
            this.var_46.dispose();
         }
         this.var_46 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2751 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2751;
      }
      
      public function get status() : int
      {
         return this.var_408;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2246;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2246 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1967 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1966;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1966 = param1;
      }
   }
}

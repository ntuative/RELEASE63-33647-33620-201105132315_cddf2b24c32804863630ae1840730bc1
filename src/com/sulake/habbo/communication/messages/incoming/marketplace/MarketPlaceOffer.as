package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2247:int;
      
      private var var_2132:String;
      
      private var var_1967:int;
      
      private var var_408:int;
      
      private var var_2246:int = -1;
      
      private var var_2248:int;
      
      private var var_1966:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2247 = param3;
         this.var_2132 = param4;
         this.var_1967 = param5;
         this.var_408 = param6;
         this.var_2246 = param7;
         this.var_2248 = param8;
         this.var_1966 = param9;
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
      
      public function get status() : int
      {
         return this.var_408;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2246;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2248;
      }
      
      public function get offerCount() : int
      {
         return this.var_1966;
      }
   }
}

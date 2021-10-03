package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.ActivityPointTypeEnum;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1714:String;
      
      private var var_1967:int;
      
      private var var_2873:Boolean;
      
      private var var_2870:Boolean;
      
      private var var_2867:int;
      
      private var var_2869:int;
      
      private var var_402:ICatalogPage;
      
      private var var_2874:int;
      
      private var var_2868:int;
      
      private var var_2871:int;
      
      private var var_1575:String;
      
      private var var_2872:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1714 = param2;
         this.var_1967 = param3;
         this.var_2873 = param4;
         this.var_2870 = param5;
         this.var_2867 = param6;
         this.var_2869 = param7;
         this.var_2874 = param8;
         this.var_2868 = param9;
         this.var_2871 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1575;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1575 = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1714;
      }
      
      public function get price() : int
      {
         return this.var_1967;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2873;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2870;
      }
      
      public function get periods() : int
      {
         return this.var_2867;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2869;
      }
      
      public function get year() : int
      {
         return this.var_2874;
      }
      
      public function get month() : int
      {
         return this.var_2868;
      }
      
      public function get day() : int
      {
         return this.var_2871;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return ActivityPointTypeEnum.PIXEL;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1967;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_402;
      }
      
      public function get priceType() : String
      {
         return Offer.const_962;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1714;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_402 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2872;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2872 = param1;
      }
   }
}

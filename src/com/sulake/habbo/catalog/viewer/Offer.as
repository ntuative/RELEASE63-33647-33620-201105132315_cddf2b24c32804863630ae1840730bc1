package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer, IDisposable
   {
      
      public static const const_1695:String = "pricing_model_unknown";
      
      public static const const_433:String = "pricing_model_single";
      
      public static const const_413:String = "pricing_model_multi";
      
      public static const const_468:String = "pricing_model_bundle";
      
      public static const const_1776:String = "price_type_none";
      
      public static const const_962:String = "price_type_credits";
      
      public static const const_1291:String = "price_type_activitypoints";
      
      public static const const_1271:String = "price_type_credits_and_activitypoints";
       
      
      private var var_729:String;
      
      private var var_1127:String;
      
      private var _offerId:int;
      
      private var var_1690:String;
      
      private var var_1126:int;
      
      private var var_1125:int;
      
      private var var_1689:int;
      
      private var var_402:ICatalogPage;
      
      private var var_590:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2266:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_1690 = param2;
         this.var_1126 = param3;
         this.var_1125 = param4;
         this.var_1689 = param5;
         this.var_402 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_402;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1690;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1126;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1125;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1689;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_590;
      }
      
      public function get pricingModel() : String
      {
         return this.var_729;
      }
      
      public function get priceType() : String
      {
         return this.var_1127;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2266;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2266 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this._offerId = 0;
         this.var_1690 = "";
         this.var_1126 = 0;
         this.var_1125 = 0;
         this.var_1689 = 0;
         this.var_402 = null;
         if(this.var_590 != null)
         {
            this.var_590.dispose();
            this.var_590 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_729)
         {
            case const_433:
               this.var_590 = new SingleProductContainer(this,param1);
               break;
            case const_413:
               this.var_590 = new MultiProductContainer(this,param1);
               break;
            case const_468:
               this.var_590 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_729);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_729 = const_433;
            }
            else
            {
               this.var_729 = const_413;
            }
         }
         else if(param1.length > 1)
         {
            this.var_729 = const_468;
         }
         else
         {
            this.var_729 = const_1695;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1126 > 0 && this.var_1125 > 0)
         {
            this.var_1127 = const_1271;
         }
         else if(this.var_1126 > 0)
         {
            this.var_1127 = const_962;
         }
         else if(this.var_1125 > 0)
         {
            this.var_1127 = const_1291;
         }
         else
         {
            this.var_1127 = const_1776;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_402.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_590.products)
         {
            _loc4_ = this.var_402.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}

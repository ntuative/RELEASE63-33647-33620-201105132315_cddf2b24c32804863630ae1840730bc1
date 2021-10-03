package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1714:String;
      
      private var var_1967:int;
      
      private var var_2873:Boolean;
      
      private var var_2870:Boolean;
      
      private var var_2867:int;
      
      private var var_2869:int;
      
      private var var_2874:int;
      
      private var var_2868:int;
      
      private var var_2871:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1714 = param1.readString();
         this.var_1967 = param1.readInteger();
         this.var_2873 = param1.readBoolean();
         this.var_2870 = param1.readBoolean();
         this.var_2867 = param1.readInteger();
         this.var_2869 = param1.readInteger();
         this.var_2874 = param1.readInteger();
         this.var_2868 = param1.readInteger();
         this.var_2871 = param1.readInteger();
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
   }
}

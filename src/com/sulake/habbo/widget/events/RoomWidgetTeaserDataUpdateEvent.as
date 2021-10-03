package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_574:String = "RWTDUE_TEASER_DATA";
      
      public static const const_914:String = "RWTDUE_GIFT_DATA";
      
      public static const const_699:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_218:int;
      
      private var _data:String;
      
      private var var_408:int;
      
      private var var_194:String;
      
      private var var_2200:String;
      
      private var var_2201:Boolean;
      
      private var var_1582:int = 0;
      
      private var var_2199:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_218;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_408;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2200;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2201;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2199;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1582;
      }
      
      public function set status(param1:int) : void
      {
         this.var_408 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2200 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2201 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2199 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_218 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_194;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_194 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1582 = param1;
      }
   }
}

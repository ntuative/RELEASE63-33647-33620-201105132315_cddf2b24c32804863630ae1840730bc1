package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_355:int;
      
      private var var_726:Boolean;
      
      private var var_913:String;
      
      private var _ownerName:String;
      
      private var var_2623:int;
      
      private var var_2223:int;
      
      private var var_2902:int;
      
      private var var_1691:String;
      
      private var var_2898:int;
      
      private var var_2670:Boolean;
      
      private var var_716:int;
      
      private var var_1430:int;
      
      private var var_2900:String;
      
      private var var_880:Array;
      
      private var var_2901:RoomThumbnailData;
      
      private var var_2625:Boolean;
      
      private var var_2899:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_880 = new Array();
         super();
         this.var_355 = param1.readInteger();
         this.var_726 = param1.readBoolean();
         this.var_913 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2623 = param1.readInteger();
         this.var_2223 = param1.readInteger();
         this.var_2902 = param1.readInteger();
         this.var_1691 = param1.readString();
         this.var_2898 = param1.readInteger();
         this.var_2670 = param1.readBoolean();
         this.var_716 = param1.readInteger();
         this.var_1430 = param1.readInteger();
         this.var_2900 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_880.push(_loc4_);
            _loc3_++;
         }
         this.var_2901 = new RoomThumbnailData(param1);
         this.var_2625 = param1.readBoolean();
         this.var_2899 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_880 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_355;
      }
      
      public function get event() : Boolean
      {
         return this.var_726;
      }
      
      public function get roomName() : String
      {
         return this.var_913;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2623;
      }
      
      public function get userCount() : int
      {
         return this.var_2223;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2902;
      }
      
      public function get description() : String
      {
         return this.var_1691;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2898;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2670;
      }
      
      public function get score() : int
      {
         return this.var_716;
      }
      
      public function get categoryId() : int
      {
         return this.var_1430;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2900;
      }
      
      public function get tags() : Array
      {
         return this.var_880;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2901;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2625;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2899;
      }
   }
}

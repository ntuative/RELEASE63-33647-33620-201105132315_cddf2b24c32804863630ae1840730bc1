package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_132:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_152:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_945:int = 2;
      
      public static const const_694:int = 3;
      
      public static const const_1612:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1958:String = "";
      
      private var var_2317:int;
      
      private var var_2314:int = 0;
      
      private var var_2318:int = 0;
      
      private var var_680:String = "";
      
      private var var_46:BitmapData = null;
      
      private var var_281:Array;
      
      private var var_1438:int = 0;
      
      private var var_2334:String = "";
      
      private var var_2335:int = 0;
      
      private var var_2332:int = 0;
      
      private var var_1865:Boolean = false;
      
      private var var_1959:String = "";
      
      private var var_2339:Boolean = false;
      
      private var var_2336:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2340:Boolean = false;
      
      private var var_2341:Boolean = false;
      
      private var var_2343:Boolean = false;
      
      private var var_2342:Boolean = false;
      
      private var var_2338:Boolean = false;
      
      private var var_2337:Boolean = false;
      
      private var var_2333:int = 0;
      
      private var var_1864:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_281 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1958 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1958;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2317 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2317;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2314 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2314;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2318 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2318;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_680 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_680;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_46 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_281 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_281;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1438 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1438;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2334 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2334;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2339 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2339;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2340 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2340;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2341 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2341;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2343 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2343;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2342 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2342;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2338 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2338;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2337 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2337;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2333 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2333;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2336 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2336;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1864 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1864;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2335 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2335;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2332 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2332;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1865 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1865;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1959 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1959;
      }
   }
}

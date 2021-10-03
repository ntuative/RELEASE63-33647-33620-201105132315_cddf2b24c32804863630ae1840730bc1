package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1306:int;
      
      private var var_1948:int;
      
      private var var_2324:int;
      
      private var var_1777:int;
      
      private var var_1428:int;
      
      private var var_2188:String = "";
      
      private var var_2560:String = "";
      
      private var var_2559:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1306 = param1.readInteger();
         this.var_2188 = param1.readString();
         this.var_1948 = param1.readInteger();
         this.var_2324 = param1.readInteger();
         this.var_1777 = param1.readInteger();
         this.var_1428 = param1.readInteger();
         this.var_2559 = param1.readInteger();
         this.var_2560 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1306;
      }
      
      public function get points() : int
      {
         return this.var_1948;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2324;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1777;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1428;
      }
      
      public function get badgeID() : String
      {
         return this.var_2188;
      }
      
      public function get achievementID() : int
      {
         return this.var_2559;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2560;
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1306:int;
      
      private var var_306:String;
      
      private var var_2322:int;
      
      private var var_2324:int;
      
      private var var_1777:int;
      
      private var var_2325:int;
      
      private var var_1719:Boolean;
      
      private var _category:String;
      
      private var var_2323:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1306 = param1.readInteger();
         this.var_306 = param1.readString();
         this.var_2322 = param1.readInteger();
         this.var_2324 = param1.readInteger();
         this.var_1777 = param1.readInteger();
         this.var_2325 = param1.readInteger();
         this.var_1719 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2323 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_306;
      }
      
      public function get level() : int
      {
         return this.var_1306;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2322;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2324;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1777;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2325;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1719;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2323;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1306 > 1 || this.var_1719;
      }
   }
}

package com.sulake.habbo.communication.messages.parser.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.inventory.achievements.AchievementData;
   
   public class AchievementMessageParser implements IMessageParser
   {
       
      
      private var var_122:AchievementData;
      
      public function AchievementMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_122 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_122 = new AchievementData(param1);
         return true;
      }
      
      public function get achievement() : AchievementData
      {
         return this.var_122;
      }
   }
}

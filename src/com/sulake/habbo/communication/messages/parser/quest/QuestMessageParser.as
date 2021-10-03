package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestMessageParser implements IMessageParser
   {
       
      
      private var var_321:QuestMessageData;
      
      public function QuestMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         if(this.var_321)
         {
            this.var_321.dispose();
         }
         this.var_321 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_321 = new QuestMessageData(param1);
         return true;
      }
      
      public function get quest() : QuestMessageData
      {
         return this.var_321;
      }
   }
}

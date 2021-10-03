package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1159:Boolean;
      
      private var var_1158:Boolean;
      
      private var var_1426:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1159;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1158;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1426;
      }
      
      public function flush() : Boolean
      {
         this.var_1159 = false;
         this.var_1158 = false;
         this.var_1426 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1159 = param1.readBoolean();
         this.var_1158 = param1.readBoolean();
         this.var_1426 = param1.readBoolean();
         return true;
      }
   }
}

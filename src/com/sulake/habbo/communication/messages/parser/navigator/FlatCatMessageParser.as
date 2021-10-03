package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_355:int;
      
      private var var_1844:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_355 = param1.readInteger();
         this.var_1844 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_355 = 0;
         this.var_1844 = 0;
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_355;
      }
      
      public function get nodeId() : int
      {
         return this.var_1844;
      }
   }
}

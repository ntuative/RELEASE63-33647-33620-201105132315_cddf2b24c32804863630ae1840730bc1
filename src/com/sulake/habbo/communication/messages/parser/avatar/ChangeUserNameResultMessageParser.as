package com.sulake.habbo.communication.messages.parser.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ChangeUserNameResultMessageParser implements IMessageParser
   {
       
      
      private var var_1720:int = -1;
      
      private var _name:String;
      
      private var var_1400:Array;
      
      public function ChangeUserNameResultMessageParser()
      {
         super();
      }
      
      public function get resultCode() : int
      {
         return this.var_1720;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get nameSuggestions() : Array
      {
         return this.var_1400;
      }
      
      public function flush() : Boolean
      {
         this.var_1720 = -1;
         this._name = "";
         this.var_1400 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1720 = param1.readInteger();
         this._name = param1.readString();
         var _loc2_:int = param1.readInteger();
         this.var_1400 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1400.push(param1.readString());
            _loc3_++;
         }
         return true;
      }
   }
}

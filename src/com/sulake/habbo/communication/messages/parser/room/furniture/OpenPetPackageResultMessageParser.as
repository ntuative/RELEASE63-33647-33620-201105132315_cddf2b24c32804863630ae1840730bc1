package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_218:int = 0;
      
      private var var_1771:int = 0;
      
      private var var_1770:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_218;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1771;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1770;
      }
      
      public function flush() : Boolean
      {
         this.var_218 = 0;
         this.var_1771 = 0;
         this.var_1770 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_218 = param1.readInteger();
         this.var_1771 = param1.readInteger();
         this.var_1770 = param1.readString();
         return true;
      }
   }
}

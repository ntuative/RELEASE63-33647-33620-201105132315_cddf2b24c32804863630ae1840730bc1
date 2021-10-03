package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PresentOpenedMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1442:String;
      
      private var var_1715:int;
      
      private var var_1714:String;
      
      public function PresentOpenedMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemType() : String
      {
         return this.var_1442;
      }
      
      public function get classId() : int
      {
         return this.var_1715;
      }
      
      public function get productCode() : String
      {
         return this.var_1714;
      }
      
      public function flush() : Boolean
      {
         this.var_1442 = "";
         this.var_1715 = 0;
         this.var_1714 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1442 = param1.readString();
         this.var_1715 = param1.readInteger();
         this.var_1714 = param1.readString();
         return true;
      }
   }
}

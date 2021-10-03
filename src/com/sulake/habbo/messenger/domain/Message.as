package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_953:int = 1;
      
      public static const const_757:int = 2;
      
      public static const const_881:int = 3;
      
      public static const const_1225:int = 4;
      
      public static const const_868:int = 5;
      
      public static const const_1327:int = 6;
       
      
      private var _type:int;
      
      private var var_1262:int;
      
      private var var_2249:String;
      
      private var var_2591:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1262 = param2;
         this.var_2249 = param3;
         this.var_2591 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2249;
      }
      
      public function get time() : String
      {
         return this.var_2591;
      }
      
      public function get senderId() : int
      {
         return this.var_1262;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}

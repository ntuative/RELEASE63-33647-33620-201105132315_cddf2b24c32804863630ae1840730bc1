package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2329:int;
      
      private var var_2327:int;
      
      private var var_2328:int;
      
      private var var_2330:String;
      
      private var var_1914:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2329 = param1.readInteger();
         this.var_2327 = param1.readInteger();
         this.var_2328 = param1.readInteger();
         this.var_2330 = param1.readString();
         this.var_1914 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2329;
      }
      
      public function get minute() : int
      {
         return this.var_2327;
      }
      
      public function get chatterId() : int
      {
         return this.var_2328;
      }
      
      public function get chatterName() : String
      {
         return this.var_2330;
      }
      
      public function get msg() : String
      {
         return this.var_1914;
      }
   }
}

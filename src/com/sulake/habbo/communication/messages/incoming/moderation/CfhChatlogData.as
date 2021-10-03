package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1764:int;
      
      private var var_2386:int;
      
      private var var_1380:int;
      
      private var var_2387:int;
      
      private var var_115:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1764 = param1.readInteger();
         this.var_2386 = param1.readInteger();
         this.var_1380 = param1.readInteger();
         this.var_2387 = param1.readInteger();
         this.var_115 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1764);
      }
      
      public function get callId() : int
      {
         return this.var_1764;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2386;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1380;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2387;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_115;
      }
   }
}

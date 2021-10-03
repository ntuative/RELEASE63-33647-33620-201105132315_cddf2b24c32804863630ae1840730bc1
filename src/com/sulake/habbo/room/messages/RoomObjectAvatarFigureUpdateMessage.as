package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_680:String;
      
      private var var_2347:String;
      
      private var var_1044:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_680 = param1;
         this.var_1044 = param2;
         this.var_2347 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_680;
      }
      
      public function get race() : String
      {
         return this.var_2347;
      }
      
      public function get gender() : String
      {
         return this.var_1044;
      }
   }
}

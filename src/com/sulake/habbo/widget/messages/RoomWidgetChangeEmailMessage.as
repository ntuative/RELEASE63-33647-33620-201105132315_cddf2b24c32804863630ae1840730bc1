package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChangeEmailMessage extends RoomWidgetMessage
   {
      
      public static const const_854:String = "rwcem_change_email";
       
      
      private var var_2221:String;
      
      public function RoomWidgetChangeEmailMessage(param1:String)
      {
         super(const_854);
         this.var_2221 = param1;
      }
      
      public function get newEmail() : String
      {
         return this.var_2221;
      }
   }
}

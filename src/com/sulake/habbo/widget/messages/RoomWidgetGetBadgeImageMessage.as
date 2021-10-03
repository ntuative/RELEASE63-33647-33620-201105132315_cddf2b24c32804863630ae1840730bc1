package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_938:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_306:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_938);
         this.var_306 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_306;
      }
   }
}

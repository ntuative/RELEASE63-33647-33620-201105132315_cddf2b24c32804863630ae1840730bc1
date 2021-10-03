package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_897:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2188:String;
      
      private var var_2187:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_897,param3,param4);
         this.var_2188 = param1;
         this.var_2187 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2188;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2187;
      }
   }
}

package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_408:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1259:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1130:String = "RWOCM_PIXELS";
      
      public static const const_1276:String = "RWOCM_CREDITS";
       
      
      private var var_2731:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_408);
         this.var_2731 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2731;
      }
   }
}

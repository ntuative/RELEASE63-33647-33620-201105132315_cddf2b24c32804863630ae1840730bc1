package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_961:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1207:String = "inventory_effects";
      
      public static const const_1113:String = "inventory_badges";
      
      public static const const_1755:String = "inventory_clothes";
      
      public static const const_1723:String = "inventory_furniture";
       
      
      private var var_2389:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_961);
         this.var_2389 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2389;
      }
   }
}

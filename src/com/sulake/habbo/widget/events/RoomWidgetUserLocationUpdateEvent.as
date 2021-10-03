package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetUserLocationUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_1871:String = "RWULUE_USER_LOCATION_UPDATE";
       
      
      private var _userId:int;
      
      private var var_1154:Rectangle;
      
      private var var_2730:Point;
      
      public function RoomWidgetUserLocationUpdateEvent(param1:int, param2:Rectangle, param3:Point, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_1871,param4,param5);
         this._userId = param1;
         this.var_1154 = param2;
         this.var_2730 = param3;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get rectangle() : Rectangle
      {
         return this.var_1154;
      }
      
      public function get screenLocation() : Point
      {
         return this.var_2730;
      }
   }
}

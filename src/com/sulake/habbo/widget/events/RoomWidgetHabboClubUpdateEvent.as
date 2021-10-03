package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_276:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2466:int = 0;
      
      private var var_2467:int = 0;
      
      private var var_2465:int = 0;
      
      private var var_2468:Boolean = false;
      
      private var var_2216:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_276,param6,param7);
         this.var_2466 = param1;
         this.var_2467 = param2;
         this.var_2465 = param3;
         this.var_2468 = param4;
         this.var_2216 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2466;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2467;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2465;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2468;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2216;
      }
   }
}

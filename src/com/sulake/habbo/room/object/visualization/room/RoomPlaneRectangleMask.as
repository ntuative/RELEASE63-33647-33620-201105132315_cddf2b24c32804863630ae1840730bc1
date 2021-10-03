package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2503:Number = 0.0;
      
      private var var_2502:Number = 0.0;
      
      private var var_2635:Number = 0.0;
      
      private var var_2636:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2503 = param1;
         this.var_2502 = param2;
         this.var_2635 = param3;
         this.var_2636 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2503;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2502;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2635;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2636;
      }
   }
}

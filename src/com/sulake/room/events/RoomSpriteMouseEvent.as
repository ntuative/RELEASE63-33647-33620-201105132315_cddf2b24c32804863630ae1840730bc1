package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1971:String = "";
      
      private var var_1899:String = "";
      
      private var var_2245:String = "";
      
      private var var_2833:Number = 0;
      
      private var var_2830:Number = 0;
      
      private var var_2182:Number = 0;
      
      private var var_2181:Number = 0;
      
      private var var_2832:Boolean = false;
      
      private var var_2834:Boolean = false;
      
      private var var_2831:Boolean = false;
      
      private var var_2829:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1971 = param2;
         this.var_1899 = param3;
         this.var_2245 = param4;
         this.var_2833 = param5;
         this.var_2830 = param6;
         this.var_2182 = param7;
         this.var_2181 = param8;
         this.var_2832 = param9;
         this.var_2834 = param10;
         this.var_2831 = param11;
         this.var_2829 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1971;
      }
      
      public function get canvasId() : String
      {
         return this.var_1899;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2245;
      }
      
      public function get screenX() : Number
      {
         return this.var_2833;
      }
      
      public function get screenY() : Number
      {
         return this.var_2830;
      }
      
      public function get localX() : Number
      {
         return this.var_2182;
      }
      
      public function get localY() : Number
      {
         return this.var_2181;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2832;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2834;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2831;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2829;
      }
   }
}

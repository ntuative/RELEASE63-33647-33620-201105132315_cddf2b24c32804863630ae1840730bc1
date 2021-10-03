package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1688:int;
      
      private var var_1981:Number;
      
      private var var_2780:Number;
      
      private var var_2779:int;
      
      private var var_2782:Number;
      
      private var var_2781:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1688 = param1;
         this.var_1981 = param2;
         this.var_2780 = param3;
         this.var_2782 = param4;
         this.var_2781 = param5;
         this.var_2779 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1688;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1981 < 0)
         {
            return 0;
         }
         return this.var_1981 + (getTimer() - this.var_2779) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2780;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2782;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2781;
      }
   }
}

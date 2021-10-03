package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2355:int = 0;
      
      private var var_1408:String = "";
      
      private var var_1733:String = "";
      
      private var var_2348:String = "";
      
      private var var_2810:String = "";
      
      private var var_2006:int = 0;
      
      private var var_2813:int = 0;
      
      private var var_2812:int = 0;
      
      private var var_1407:int = 0;
      
      private var var_2811:int = 0;
      
      private var var_1406:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2355 = param1;
         this.var_1408 = param2;
         this.var_1733 = param3;
         this.var_2348 = param4;
         this.var_2810 = param5;
         if(param6)
         {
            this.var_2006 = 1;
         }
         else
         {
            this.var_2006 = 0;
         }
         this.var_2813 = param7;
         this.var_2812 = param8;
         this.var_1407 = param9;
         this.var_2811 = param10;
         this.var_1406 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2355,this.var_1408,this.var_1733,this.var_2348,this.var_2810,this.var_2006,this.var_2813,this.var_2812,this.var_1407,this.var_2811,this.var_1406];
      }
   }
}

package com.sulake.habbo.widget.infostand
{
   import flash.utils.Dictionary;
   
   public class CommandConfiguration
   {
       
      
      private var var_2512:Array;
      
      private var var_1191:Dictionary;
      
      public function CommandConfiguration(param1:Array, param2:Array)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.var_1191 = new Dictionary();
         super();
         this.var_2512 = param1;
         while(_loc3_ < param2.length)
         {
            _loc4_ = param2[_loc3_];
            this.var_1191[_loc4_] = true;
            _loc3_++;
         }
      }
      
      public function get allCommandIds() : Array
      {
         return this.var_2512;
      }
      
      public function isEnabled(param1:int) : Boolean
      {
         return this.var_1191[param1] != null;
      }
   }
}

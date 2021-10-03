package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1839:int = 0;
      
      private var var_1840:int = 0;
      
      private var var_2499:int = 0;
      
      private var var_2501:Boolean = false;
      
      private var var_2500:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1839 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1840 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2499 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2501 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2500 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1839;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1840;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2499;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2501;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2500;
      }
   }
}

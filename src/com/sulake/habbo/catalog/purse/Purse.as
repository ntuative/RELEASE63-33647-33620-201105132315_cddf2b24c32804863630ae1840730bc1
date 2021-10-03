package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1801:int = 0;
      
      private var var_1457:Dictionary;
      
      private var var_1839:int = 0;
      
      private var var_1840:int = 0;
      
      private var var_2500:Boolean = false;
      
      private var var_2520:int = 0;
      
      private var var_2521:int = 0;
      
      public function Purse()
      {
         this.var_1457 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1801;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1801 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1839;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1839 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1840;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1840 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1839 > 0 || this.var_1840 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2500;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2500 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2520;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2520 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2521;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2521 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1457;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1457 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1457[param1];
      }
   }
}

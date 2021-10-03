package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2258:int;
      
      private var var_1442:String;
      
      private var var_2415:int;
      
      private var var_2421:int;
      
      private var _category:int;
      
      private var var_2132:String;
      
      private var var_1459:int;
      
      private var var_2416:int;
      
      private var var_2418:int;
      
      private var var_2417:int;
      
      private var var_2420:int;
      
      private var var_2419:Boolean;
      
      private var var_2983:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2258 = param1;
         this.var_1442 = param2;
         this.var_2415 = param3;
         this.var_2421 = param4;
         this._category = param5;
         this.var_2132 = param6;
         this.var_1459 = param7;
         this.var_2416 = param8;
         this.var_2418 = param9;
         this.var_2417 = param10;
         this.var_2420 = param11;
         this.var_2419 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2258;
      }
      
      public function get itemType() : String
      {
         return this.var_1442;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2415;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2421;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2132;
      }
      
      public function get extra() : int
      {
         return this.var_1459;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2416;
      }
      
      public function get creationDay() : int
      {
         return this.var_2418;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2417;
      }
      
      public function get creationYear() : int
      {
         return this.var_2420;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2419;
      }
      
      public function get songID() : int
      {
         return this.var_1459;
      }
   }
}

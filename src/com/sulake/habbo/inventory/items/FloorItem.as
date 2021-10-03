package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2132:String;
      
      protected var var_1459:Number;
      
      protected var var_2911:Boolean;
      
      protected var var_2910:Boolean;
      
      protected var var_2419:Boolean;
      
      protected var var_2856:Boolean;
      
      protected var var_2912:int;
      
      protected var var_2418:int;
      
      protected var var_2417:int;
      
      protected var var_2420:int;
      
      protected var var_2021:String;
      
      protected var var_1688:int;
      
      protected var var_978:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2419 = param5;
         this.var_2910 = param6;
         this.var_2911 = param7;
         this.var_2856 = param8;
         this.var_2132 = param9;
         this.var_1459 = param10;
         this.var_2912 = param11;
         this.var_2418 = param12;
         this.var_2417 = param13;
         this.var_2420 = param14;
         this.var_2021 = param15;
         this.var_1688 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2132;
      }
      
      public function get extra() : Number
      {
         return this.var_1459;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2911;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2910;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2419;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2856;
      }
      
      public function get expires() : int
      {
         return this.var_2912;
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
      
      public function get slotId() : String
      {
         return this.var_2021;
      }
      
      public function get songId() : int
      {
         return this.var_1688;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_978 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_978;
      }
   }
}

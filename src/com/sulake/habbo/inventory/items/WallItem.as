package com.sulake.habbo.inventory.items
{
   public class WallItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _type:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var var_1459:Number;
      
      protected var var_2132:String;
      
      protected var var_2911:Boolean;
      
      protected var var_2910:Boolean;
      
      protected var var_2419:Boolean;
      
      protected var var_2856:Boolean;
      
      protected var var_978:Boolean;
      
      public function WallItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number)
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
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get extra() : Number
      {
         return this.var_1459;
      }
      
      public function get stuffData() : String
      {
         return this.var_2132;
      }
      
      public function set stuffData(param1:String) : void
      {
         this.var_2132 = param1;
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
      
      public function get locked() : Boolean
      {
         return this.var_978;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_978 = param1;
      }
   }
}

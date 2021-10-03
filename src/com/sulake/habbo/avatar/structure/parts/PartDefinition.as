package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2849:String;
      
      private var var_2037:String;
      
      private var var_2848:String;
      
      private var var_2036:Boolean;
      
      private var var_2035:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2849 = String(param1["set-type"]);
         this.var_2037 = String(param1["flipped-set-type"]);
         this.var_2848 = String(param1["remove-set-type"]);
         this.var_2036 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_2035 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_2035;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_2035 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2849;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_2037;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2848;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_2036;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_2036 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_2037 = param1;
      }
   }
}

package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1578:Boolean = false;
      
      private var var_1967:int;
      
      private var var_1699:Array;
      
      private var var_837:Array;
      
      private var var_838:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1578 = _loc2_.isWrappingEnabled;
         this.var_1967 = _loc2_.wrappingPrice;
         this.var_1699 = _loc2_.stuffTypes;
         this.var_837 = _loc2_.boxTypes;
         this.var_838 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1578;
      }
      
      public function get price() : int
      {
         return this.var_1967;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1699;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_837;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_838;
      }
   }
}

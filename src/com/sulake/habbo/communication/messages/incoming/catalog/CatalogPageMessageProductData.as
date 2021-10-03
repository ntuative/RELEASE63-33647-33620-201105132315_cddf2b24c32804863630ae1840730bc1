package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_82:String = "s";
      
      public static const const_205:String = "e";
       
      
      private var var_1454:String;
      
      private var var_2659:int;
      
      private var var_1190:String;
      
      private var var_1453:int;
      
      private var var_1831:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1454 = param1.readString();
         this.var_2659 = param1.readInteger();
         this.var_1190 = param1.readString();
         this.var_1453 = param1.readInteger();
         this.var_1831 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1454;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2659;
      }
      
      public function get extraParam() : String
      {
         return this.var_1190;
      }
      
      public function get productCount() : int
      {
         return this.var_1453;
      }
      
      public function get expiration() : int
      {
         return this.var_1831;
      }
   }
}

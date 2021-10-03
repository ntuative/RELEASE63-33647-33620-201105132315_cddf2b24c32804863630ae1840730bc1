package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1410:IID;
      
      private var var_1735:String;
      
      private var var_109:IUnknown;
      
      private var var_746:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1410 = param1;
         this.var_1735 = getQualifiedClassName(this.var_1410);
         this.var_109 = param2;
         this.var_746 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1410;
      }
      
      public function get iis() : String
      {
         return this.var_1735;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_109;
      }
      
      public function get references() : uint
      {
         return this.var_746;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_109 == null;
      }
      
      public function dispose() : void
      {
         this.var_1410 = null;
         this.var_1735 = null;
         this.var_109 = null;
         this.var_746 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_746;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_746) : uint(0);
      }
   }
}

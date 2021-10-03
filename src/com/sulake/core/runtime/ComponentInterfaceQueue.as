package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1975:IID;
      
      private var var_1085:Boolean;
      
      private var var_1272:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1975 = param1;
         this.var_1272 = new Array();
         this.var_1085 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1975;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1085;
      }
      
      public function get receivers() : Array
      {
         return this.var_1272;
      }
      
      public function dispose() : void
      {
         if(!this.var_1085)
         {
            this.var_1085 = true;
            this.var_1975 = null;
            while(this.var_1272.length > 0)
            {
               this.var_1272.pop();
            }
            this.var_1272 = null;
         }
      }
   }
}

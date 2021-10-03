package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1844:int;
      
      private var var_2777:String;
      
      private var var_325:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1844 = param1.readInteger();
         this.var_2777 = param1.readString();
         this.var_325 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1844;
      }
      
      public function get nodeName() : String
      {
         return this.var_2777;
      }
      
      public function get visible() : Boolean
      {
         return this.var_325;
      }
   }
}

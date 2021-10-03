package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2791:int;
      
      private var var_2792:int;
      
      private var var_2793:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2791 = param1;
         this.var_2792 = param2;
         this.var_2793 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2791,this.var_2792,this.var_2793];
      }
      
      public function dispose() : void
      {
      }
   }
}

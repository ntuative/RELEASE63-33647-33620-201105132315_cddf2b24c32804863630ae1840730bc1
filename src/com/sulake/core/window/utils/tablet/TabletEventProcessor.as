package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2990:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_84 = param1.desktop;
         var_63 = param1.var_1338 as WindowController;
         var_175 = param1.var_1340 as WindowController;
         var_162 = param1.renderer;
         var_874 = param1.var_1337;
         param2.begin();
         param2.end();
         param1.desktop = var_84;
         param1.var_1338 = var_63;
         param1.var_1340 = var_175;
         param1.renderer = var_162;
         param1.var_1337 = var_874;
      }
   }
}

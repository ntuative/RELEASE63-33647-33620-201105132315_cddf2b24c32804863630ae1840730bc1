package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1364:IHabboTracking;
      
      private var var_2047:Boolean = false;
      
      private var var_2784:int = 0;
      
      private var var_1986:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1364 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1364 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2047 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2784 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_2047)
         {
            return;
         }
         ++this.var_1986;
         if(this.var_1986 <= this.var_2784)
         {
            this.var_1364.track("toolbar",param1);
         }
      }
   }
}

package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2967:uint;
      
      private var var_151:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_259:IWindowContext;
      
      private var var_1311:IMouseDraggingService;
      
      private var var_1313:IMouseScalingService;
      
      private var var_1314:IMouseListenerService;
      
      private var var_1315:IFocusManagerService;
      
      private var var_1312:IToolTipAgentService;
      
      private var var_1310:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2967 = 0;
         this.var_151 = param2;
         this.var_259 = param1;
         this.var_1311 = new WindowMouseDragger(param2);
         this.var_1313 = new WindowMouseScaler(param2);
         this.var_1314 = new WindowMouseListener(param2);
         this.var_1315 = new FocusManager(param2);
         this.var_1312 = new WindowToolTipAgent(param2);
         this.var_1310 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1311 != null)
         {
            this.var_1311.dispose();
            this.var_1311 = null;
         }
         if(this.var_1313 != null)
         {
            this.var_1313.dispose();
            this.var_1313 = null;
         }
         if(this.var_1314 != null)
         {
            this.var_1314.dispose();
            this.var_1314 = null;
         }
         if(this.var_1315 != null)
         {
            this.var_1315.dispose();
            this.var_1315 = null;
         }
         if(this.var_1312 != null)
         {
            this.var_1312.dispose();
            this.var_1312 = null;
         }
         if(this.var_1310 != null)
         {
            this.var_1310.dispose();
            this.var_1310 = null;
         }
         this.var_151 = null;
         this.var_259 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1311;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1313;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1314;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1315;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1312;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1310;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}

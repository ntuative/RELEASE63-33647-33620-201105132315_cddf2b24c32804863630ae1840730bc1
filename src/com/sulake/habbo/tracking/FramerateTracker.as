package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1654:int;
      
      private var var_2198:int;
      
      private var var_825:int;
      
      private var var_499:Number;
      
      private var var_2197:Boolean;
      
      private var var_2196:int;
      
      private var var_1655:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_499);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2198 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2196 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2197 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_825;
         if(this.var_825 == 1)
         {
            this.var_499 = param1;
            this.var_1654 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_825);
            this.var_499 = this.var_499 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2197 && param3 - this.var_1654 >= this.var_2198)
         {
            this.var_825 = 0;
            if(this.var_1655 < this.var_2196)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_1655;
               this.var_1654 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}

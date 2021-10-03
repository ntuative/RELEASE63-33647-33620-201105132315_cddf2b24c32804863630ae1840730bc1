package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1504:int = 3;
      
      private static const const_1376:int = 2;
      
      private static const const_1374:int = 1;
      
      private static const const_1375:int = 15;
       
      
      private var var_324:Array;
      
      private var var_1131:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_324 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1376)
         {
            this.var_324 = new Array();
            this.var_324.push(const_1374);
            this.var_1131 = const_1375;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1131 > 0)
         {
            --this.var_1131;
         }
         if(this.var_1131 == 0)
         {
            if(this.var_324.length > 0)
            {
               super.setAnimation(this.var_324.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}

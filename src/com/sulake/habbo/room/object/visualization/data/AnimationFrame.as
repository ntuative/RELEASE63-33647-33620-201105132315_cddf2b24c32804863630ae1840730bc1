package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrame
   {
      
      public static const const_470:int = -1;
      
      public static const const_1282:int = -1;
      
      private static const const_1526:int = 3000;
      
      private static const POOL:Array = [];
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_173:int = 0;
      
      private var var_2701:int = 1;
      
      private var var_1014:int = 1;
      
      private var var_1942:int = 1;
      
      private var var_2702:int = -1;
      
      private var var_2703:int = 0;
      
      private var var_2700:Boolean = false;
      
      private var _isRecycled:Boolean = false;
      
      public function AnimationFrame()
      {
         super();
      }
      
      public static function allocate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0) : AnimationFrame
      {
         var _loc9_:AnimationFrame = false ? POOL.pop() : new AnimationFrame();
         _loc9_._isRecycled = false;
         _loc9_._id = param1;
         _loc9_._x = param2;
         _loc9_.var_173 = param3;
         _loc9_.var_2700 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         _loc9_.var_2701 = param4;
         if(param5 < 0)
         {
            param5 = const_470;
         }
         _loc9_.var_1014 = param5;
         _loc9_.var_1942 = param5;
         if(param7 >= 0)
         {
            _loc9_.var_2702 = param7;
            _loc9_.var_2703 = param8;
         }
         return _loc9_;
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_173;
      }
      
      public function get repeats() : int
      {
         return this.var_2701;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_1014;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2700;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_1014 < 0)
         {
            return const_470;
         }
         return this.var_1942;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_1014 > 0 && param1 > this.var_1014)
         {
            param1 = this.var_1014;
         }
         this.var_1942 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2702;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2703;
      }
      
      public function recycle() : void
      {
         if(!this._isRecycled)
         {
            this._isRecycled = true;
            if(POOL.length < const_1526)
            {
               POOL.push(this);
            }
         }
      }
   }
}

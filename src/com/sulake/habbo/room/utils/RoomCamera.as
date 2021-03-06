package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1377:Number = 12;
       
      
      private var var_2304:int = -1;
      
      private var var_2313:int = -2;
      
      private var var_201:Vector3d = null;
      
      private var var_1135:Number = 0;
      
      private var var_1398:Number = 0;
      
      private var var_1710:Boolean = false;
      
      private var var_178:Vector3d = null;
      
      private var var_1713:Vector3d;
      
      private var var_2308:Boolean = false;
      
      private var var_2311:Boolean = false;
      
      private var var_2310:Boolean = false;
      
      private var var_2306:Boolean = false;
      
      private var var_2309:int = 0;
      
      private var var_2312:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2307:int = 0;
      
      private var var_2305:int = 0;
      
      private var var_1666:int = -1;
      
      private var var_1711:int = 0;
      
      private var var_1712:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1713 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_178;
      }
      
      public function get targetId() : int
      {
         return this.var_2304;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2313;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1713;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2308;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2311;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2310;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2306;
      }
      
      public function get screenWd() : int
      {
         return this.var_2309;
      }
      
      public function get screenHt() : int
      {
         return this.var_2312;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2307;
      }
      
      public function get roomHt() : int
      {
         return this.var_2305;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1666;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_201 != null && this.var_178 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2304 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1713.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2313 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2308 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2311 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2310 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2306 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2309 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2312 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1712 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2307 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2305 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1666 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_201 == null)
         {
            this.var_201 = new Vector3d();
         }
         if(this.var_201.x != param1.x || this.var_201.y != param1.y || this.var_201.z != param1.z)
         {
            this.var_201.assign(param1);
            this.var_1711 = 0;
            _loc2_ = Vector3d.dif(this.var_201,this.var_178);
            this.var_1135 = _loc2_.length;
            this.var_1710 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_201 = null;
         this.var_178 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_178 != null)
         {
            return;
         }
         this.var_178 = new Vector3d();
         this.var_178.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_178 == null)
         {
            this.var_178 = new Vector3d();
         }
         this.var_178.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_201 != null && this.var_178 != null)
         {
            ++this.var_1711;
            if(this.var_1712)
            {
               this.var_1712 = false;
               this.var_178 = this.var_201;
               this.var_201 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_201,this.var_178);
            if(_loc3_.length > this.var_1135)
            {
               this.var_1135 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_178 = this.var_201;
               this.var_201 = null;
               this.var_1398 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1135);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1135 / const_1377;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1710)
               {
                  if(_loc7_ < this.var_1398)
                  {
                     _loc7_ = this.var_1398;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1710 = false;
                  }
               }
               this.var_1398 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_178 = Vector3d.sum(this.var_178,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1666 = -1;
      }
   }
}

package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2506:String;
      
      private var var_2504:String;
      
      private var var_425:BitmapDataAsset;
      
      private var var_1451:Boolean;
      
      private var var_1450:Boolean;
      
      private var var_2505:Boolean;
      
      private var _offsetX:int;
      
      private var var_1155:int;
      
      private var var_271:int;
      
      private var _height:int;
      
      private var var_759:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2506 = param1;
         this.var_2504 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_425 = _loc9_;
            this.var_759 = false;
         }
         else
         {
            this.var_425 = null;
            this.var_759 = true;
         }
         this.var_1451 = param4;
         this.var_1450 = param5;
         this._offsetX = param6;
         this.var_1155 = param7;
         this.var_2505 = param8;
      }
      
      public function dispose() : void
      {
         this.var_425 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_759 && this.var_425 != null)
         {
            _loc1_ = this.var_425.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_271 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_759 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1450;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1451;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_271;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2506;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2504;
      }
      
      public function get asset() : IAsset
      {
         return this.var_425;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2505;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1451)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1450)
         {
            return this.var_1155;
         }
         return -(this.height + this.var_1155);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1155;
      }
   }
}

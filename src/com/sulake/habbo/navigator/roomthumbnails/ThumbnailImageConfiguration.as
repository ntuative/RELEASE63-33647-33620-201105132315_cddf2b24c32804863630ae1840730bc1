package com.sulake.habbo.navigator.roomthumbnails
{
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ThumbnailImageConfiguration
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _id:int;
      
      private var _type:int;
      
      private var var_2044:String;
      
      private var var_2045:BitmapData;
      
      private var _selected:Boolean;
      
      private var var_2043:BitmapData;
      
      private var var_688:IBitmapWrapperWindow;
      
      private var var_2046:Rectangle;
      
      private var var_1592:int = 1;
      
      public function ThumbnailImageConfiguration(param1:HabboNavigator, param2:int, param3:int, param4:String, param5:BitmapData)
      {
         super();
         this._navigator = param1;
         this._id = param2;
         this._type = param3;
         this.var_2044 = param4;
         this.var_2043 = param5;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get picName() : String
      {
         return this.var_2044;
      }
      
      public function getImg() : BitmapData
      {
         if(this.var_2045 == null)
         {
            this.var_2045 = this._navigator.getButtonImage(this.var_2044);
         }
         return this.var_2045;
      }
      
      public function registerListImg(param1:IBitmapWrapperWindow) : void
      {
         this.var_688 = param1;
         this.refreshListImg();
      }
      
      public function copyTo(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = this.getImg();
         param1.copyPixels(_loc2_,_loc2_.rect,new Point((param1.width - _loc2_.width) / 2,param1.height - _loc2_.height),null,null,true);
      }
      
      public function setSelected(param1:Boolean) : void
      {
         if(this._selected == param1)
         {
            return;
         }
         this._selected = param1;
         this.refreshListImg();
      }
      
      private function refreshListImg() : void
      {
         var _loc1_:* = null;
         if(this.var_2046 == null)
         {
            _loc1_ = this.var_688.bitmap.rect;
            this.var_2046 = new Rectangle(this.var_1592,this.var_1592,_loc1_.width - 2 * this.var_1592,_loc1_.height - 2 * this.var_1592);
         }
         this.var_688.bitmap.fillRect(this.var_688.bitmap.rect,4281545523);
         this.var_688.bitmap.fillRect(this.var_2046,4284900966);
         this.copyTo(this.var_688.bitmap);
         if(this._selected)
         {
            this.var_688.bitmap.copyPixels(this.var_2043,this.var_2043.rect,new Point(0,0),null,null,true);
         }
         this.var_688.invalidate();
      }
   }
}

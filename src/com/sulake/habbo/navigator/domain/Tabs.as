package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_360:int = 1;
      
      public static const const_206:int = 2;
      
      public static const const_268:int = 3;
      
      public static const const_353:int = 4;
      
      public static const const_194:int = 5;
      
      public static const const_381:int = 1;
      
      public static const const_813:int = 2;
      
      public static const const_796:int = 3;
      
      public static const const_693:int = 4;
      
      public static const const_254:int = 5;
      
      public static const const_896:int = 6;
      
      public static const const_965:int = 7;
      
      public static const const_275:int = 8;
      
      public static const const_411:int = 9;
      
      public static const const_2066:int = 10;
      
      public static const const_879:int = 11;
      
      public static const const_591:int = 12;
       
      
      private var var_471:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_471 = new Array();
         this.var_471.push(new Tab(this._navigator,const_360,const_591,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_513));
         this.var_471.push(new Tab(this._navigator,const_206,const_381,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_513));
         this.var_471.push(new Tab(this._navigator,const_353,const_879,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1140));
         this.var_471.push(new Tab(this._navigator,const_268,const_254,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_513));
         this.var_471.push(new Tab(this._navigator,const_194,const_275,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_733));
         this.setSelectedTab(const_360);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_353;
      }
      
      public function get tabs() : Array
      {
         return this.var_471;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_471)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_471)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_471)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_609:int = 0;
      
      public static const const_216:int = 1;
      
      public static const const_119:int = 2;
      
      public static const const_860:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1691:String;
      
      private var var_2623:int;
      
      private var var_1430:int;
      
      private var var_2629:int;
      
      private var var_2846:int;
      
      private var var_880:Array;
      
      private var var_2628:Array;
      
      private var var_2847:int;
      
      private var var_2625:Boolean;
      
      private var var_2622:Boolean;
      
      private var var_2624:Boolean;
      
      private var var_2627:Boolean;
      
      private var var_2621:int;
      
      private var var_2626:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2625;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2625 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2622;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2622 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2624;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2624 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2627;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2627 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2621;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2621 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2626;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2626 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1691;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1691 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2623;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2623 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1430;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1430 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2629;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2629 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2846;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2846 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_880;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_880 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2628;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2628 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2847;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2847 = param1;
      }
   }
}

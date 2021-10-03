package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_763:TileHeightMap = null;
      
      private var var_1175:LegacyWallGeometry = null;
      
      private var var_1176:RoomCamera = null;
      
      private var var_764:SelectedRoomObjectData = null;
      
      private var var_762:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_509:Map;
      
      private var var_508:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_509 = new Map();
         this.var_508 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1175 = new LegacyWallGeometry();
         this.var_1176 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_763;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_763 != null)
         {
            this.var_763.dispose();
         }
         this.var_763 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1175;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1176;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_764;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_764 != null)
         {
            this.var_764.dispose();
         }
         this.var_764 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_762;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_762 != null)
         {
            this.var_762.dispose();
         }
         this.var_762 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_763 != null)
         {
            this.var_763.dispose();
            this.var_763 = null;
         }
         if(this.var_1175 != null)
         {
            this.var_1175.dispose();
            this.var_1175 = null;
         }
         if(this.var_1176 != null)
         {
            this.var_1176.dispose();
            this.var_1176 = null;
         }
         if(this.var_764 != null)
         {
            this.var_764.dispose();
            this.var_764 = null;
         }
         if(this.var_762 != null)
         {
            this.var_762.dispose();
            this.var_762 = null;
         }
         if(this.var_509 != null)
         {
            this.var_509.dispose();
            this.var_509 = null;
         }
         if(this.var_508 != null)
         {
            this.var_508.dispose();
            this.var_508 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_509.remove(param1.id);
            this.var_509.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_509.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_509.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_509.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_508.remove(param1.id);
            this.var_508.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_508.length > 0)
         {
            return this.getWallItemDataWithId(this.var_508.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_508.remove(param1);
      }
   }
}

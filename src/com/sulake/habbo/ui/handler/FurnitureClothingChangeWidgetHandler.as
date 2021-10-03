package com.sulake.habbo.ui.handler
{
   import com.sulake.habbo.avatar.IHabboAvatarEditorDataSaver;
   import com.sulake.habbo.avatar.enum.AvatarEditorFigureCategory;
   import com.sulake.habbo.avatar.events.AvatarEditorClosedEvent;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.ui.IRoomWidgetHandlerContainer;
   import com.sulake.habbo.widget.enums.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetClothingChangeUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetAvatarEditorMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetClothingChangeMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetFurniToWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import flash.events.Event;
   
   public class FurnitureClothingChangeWidgetHandler implements IRoomWidgetHandler, IHabboAvatarEditorDataSaver
   {
      
      private static const const_1372:String = "hr-165-45.hd-208-2.ch-250-64.lg-285-82.sh-290-64";
      
      private static const const_1373:String = "hr-681-41.hd-620-9.ch-879-90.lg-700-85.sh-735-68";
       
      
      private var var_1085:Boolean = false;
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      private var var_218:int = -1;
      
      public function FurnitureClothingChangeWidgetHandler()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1085;
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_572;
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         if(this._container != null)
         {
            if(this._container.avatarEditor)
            {
               this._container.avatarEditor.events.removeEventListener(AvatarEditorClosedEvent.AVATAREDITOR_CLOSED,this.onAvatarEditorClosed);
            }
         }
         this._container = param1;
         if(this._container.avatarEditor)
         {
            this._container.avatarEditor.events.addEventListener(AvatarEditorClosedEvent.AVATAREDITOR_CLOSED,this.onAvatarEditorClosed);
         }
      }
      
      private function onAvatarEditorClosed(param1:Event = null) : void
      {
         if(this._container == null)
         {
            return;
         }
         var _loc2_:RoomWidgetClothingChangeUpdateEvent = new RoomWidgetClothingChangeUpdateEvent(RoomWidgetClothingChangeUpdateEvent.const_385);
         this._container.events.dispatchEvent(_loc2_);
      }
      
      public function dispose() : void
      {
         if(this._container != null)
         {
            if(this._container.avatarEditor && this._container.avatarEditor.events)
            {
               this._container.avatarEditor.events.removeEventListener(AvatarEditorClosedEvent.AVATAREDITOR_CLOSED,this.onAvatarEditorClosed);
            }
         }
         this.var_1085 = true;
         this._container = null;
      }
      
      public function getWidgetMessages() : Array
      {
         return [RoomWidgetFurniToWidgetMessage.const_756,RoomWidgetClothingChangeMessage.const_391,RoomWidgetAvatarEditorMessage.const_414];
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:Boolean = false;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:int = 0;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         switch(param1.type)
         {
            case RoomWidgetFurniToWidgetMessage.const_756:
               _loc6_ = param1 as RoomWidgetFurniToWidgetMessage;
               _loc3_ = this._container.roomEngine.getRoomObject(_loc6_.roomId,_loc6_.roomCategory,_loc6_.id,_loc6_.category);
               if(_loc3_ != null)
               {
                  _loc4_ = _loc3_.getModel();
                  if(_loc4_ != null)
                  {
                     _loc8_ = this._container.roomSession.isRoomOwner || this._container.sessionDataManager.isAnyRoomController;
                     if(_loc8_)
                     {
                        _loc5_ = new RoomWidgetClothingChangeUpdateEvent(RoomWidgetClothingChangeUpdateEvent.const_387,_loc6_.id,_loc6_.category,_loc6_.roomId,_loc6_.roomCategory);
                        this._container.events.dispatchEvent(_loc5_);
                     }
                  }
               }
               break;
            case RoomWidgetClothingChangeMessage.const_391:
               _loc7_ = param1 as RoomWidgetClothingChangeMessage;
               _loc3_ = this._container.roomEngine.getRoomObject(_loc7_.roomId,_loc7_.roomCategory,_loc7_.objectId,_loc7_.objectCategory);
               if(_loc3_ != null)
               {
                  _loc4_ = _loc3_.getModel();
                  if(_loc4_ != null)
                  {
                     this.var_218 = _loc7_.objectId;
                     _loc9_ = "null";
                     _loc10_ = _loc4_.getString(RoomObjectVariableEnum.const_1321);
                     if(_loc10_ == null)
                     {
                        _loc10_ = const_1372;
                     }
                     if(_loc7_.gender == FigureData.FEMALE)
                     {
                        _loc9_ = "null";
                        _loc10_ = _loc4_.getString(RoomObjectVariableEnum.const_1221);
                        if(_loc10_ == null)
                        {
                           _loc10_ = const_1373;
                        }
                     }
                     if(this._container.avatarEditor.openEditor(_loc7_.window,this,[AvatarEditorFigureCategory.const_248,AvatarEditorFigureCategory.const_705],true))
                     {
                        _loc11_ = 0;
                        this._container.avatarEditor.loadAvatarInEditor(_loc10_,_loc9_,_loc11_);
                        _loc2_ = _loc4_.getString(RoomObjectVariableEnum.const_98);
                        if(_loc2_ == null)
                        {
                           _loc2_ = "";
                        }
                        _loc5_ = new RoomWidgetClothingChangeUpdateEvent(RoomWidgetClothingChangeUpdateEvent.const_387,_loc7_.objectId,_loc7_.objectCategory,_loc7_.roomId,_loc7_.roomCategory);
                        this._container.events.dispatchEvent(_loc5_);
                     }
                  }
               }
               break;
            case RoomWidgetAvatarEditorMessage.const_414:
               _loc5_ = new RoomWidgetClothingChangeUpdateEvent(RoomWidgetClothingChangeUpdateEvent.const_385);
               this._container.events.dispatchEvent(_loc5_);
         }
         return null;
      }
      
      public function update() : void
      {
      }
      
      public function getProcessedEvents() : Array
      {
         return [];
      }
      
      public function processEvent(param1:Event) : void
      {
      }
      
      public function saveFigure(param1:String, param2:String) : void
      {
         if(this._container == null)
         {
            return;
         }
         this._container.roomSession.sendUpdateClothingChangeFurniture(this.var_218,param2,param1);
         this._container.avatarEditor.close();
      }
   }
}

package com.sulake.habbo.widget.infostand
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.enums.RoomWidgetInfostandExtraParamEnum;
   import com.sulake.habbo.widget.events.RoomWidgetBadgeImageUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetCommandsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSongUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserBadgesUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserFigureUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserTagsUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetUserActionMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class InfostandWidget extends RoomWidgetBase
   {
       
      
      private const const_1949:String = "infostand_user_view";
      
      private const const_1944:String = "infostand_furni_view";
      
      private const const_1947:String = "infostand_pet_view";
      
      private const const_1948:String = "infostand_bot_view";
      
      private const const_1946:String = "infostand_jukebox_view";
      
      private const const_1945:String = "infostand_songdisk_view";
      
      private var var_1229:InfoStandFurniView;
      
      private var var_188:InfoStandUserView;
      
      private var var_372:InfoStandPetView;
      
      private var var_448:InfoStandBotView;
      
      private var var_993:InfoStandJukeboxView;
      
      private var var_992:InfoStandSongDiskView;
      
      private var var_2640:Array;
      
      private var var_1500:InfostandUserData;
      
      private var var_652:InfostandFurniData;
      
      private var _petData:InfoStandPetData;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_166:Timer;
      
      private var _config:IHabboConfigurationManager;
      
      private var _catalog:IHabboCatalog;
      
      private const const_2216:int = 3000;
      
      public function InfostandWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager, param5:IHabboCatalog)
      {
         super(param1,param2,param3);
         this._config = param4;
         this._catalog = param5;
         this.var_1229 = new InfoStandFurniView(this,this.const_1944,this._catalog);
         this.var_188 = new InfoStandUserView(this,this.const_1949);
         this.var_372 = new InfoStandPetView(this,this.const_1947,this._catalog);
         this.var_448 = new InfoStandBotView(this,this.const_1948);
         this.var_993 = new InfoStandJukeboxView(this,this.const_1946,this._catalog);
         this.var_992 = new InfoStandSongDiskView(this,this.const_1945,this._catalog);
         this.var_1500 = new InfostandUserData();
         this.var_652 = new InfostandFurniData();
         this._petData = new InfoStandPetData();
         this.var_166 = new Timer(this.const_2216);
         this.var_166.addEventListener(TimerEvent.TIMER,this.onUpdateTimer);
         this.mainContainer.visible = false;
      }
      
      override public function get mainWindow() : IWindow
      {
         return this.mainContainer;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this._config;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(this._mainContainer == null)
         {
            this._mainContainer = windowManager.createWindow("infostand_main_container","",HabboWindowType.const_79,HabboWindowStyle.const_47,HabboWindowParam.const_47,new Rectangle(0,0,50,100)) as IWindowContainer;
            this._mainContainer.tags.push("room_widget_infostand");
            this._mainContainer.background = true;
            this._mainContainer.color = 0;
         }
         return this._mainContainer;
      }
      
      public function getXmlWindow(param1:String) : IWindow
      {
         var asset:IAsset = null;
         var xmlAsset:XmlAsset = null;
         var name:String = param1;
         var window:IWindow = null;
         try
         {
            asset = assets.getAssetByName(name);
            xmlAsset = XmlAsset(asset);
            window = windowManager.buildFromXML(XML(xmlAsset.content));
         }
         catch(e:Error)
         {
            Logger.log("[InfoStandWidget] Missing window XML: " + name);
         }
         return window;
      }
      
      override public function dispose() : void
      {
         if(this.var_166)
         {
            this.var_166.stop();
         }
         this.var_166 = null;
         if(this.var_188)
         {
            this.var_188.dispose();
         }
         this.var_188 = null;
         if(this.var_1229)
         {
            this.var_1229.dispose();
         }
         this.var_1229 = null;
         if(this.var_448)
         {
            this.var_448.dispose();
         }
         this.var_448 = null;
         if(this.var_372)
         {
            this.var_372.dispose();
         }
         this.var_372 = null;
         if(this.var_993)
         {
            this.var_993.dispose();
         }
         this.var_993 = null;
         if(this.var_992)
         {
            this.var_992.dispose();
         }
         this.var_992 = null;
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_892,this.onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_147,this.onClose);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_172,this.onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_140,this.onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_132,this.onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_152,this.onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.BOT,this.onBotInfo);
         param1.addEventListener(RoomWidgetFurniInfoUpdateEvent.const_310,this.onFurniInfo);
         param1.addEventListener(RoomWidgetUserTagsUpdateEvent.const_175,this.onUserTags);
         param1.addEventListener(RoomWidgetUserFigureUpdateEvent.const_179,this.onUserFigureUpdate);
         param1.addEventListener(RoomWidgetUserBadgesUpdateEvent.const_161,this.onUserBadges);
         param1.addEventListener(RoomWidgetBadgeImageUpdateEvent.const_897,this.onBadgeImage);
         param1.addEventListener(RoomWidgetPetInfoUpdateEvent.PET_INFO,this.onPetInfo);
         param1.addEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,this.onPetCommands);
         param1.addEventListener(RoomWidgetSongUpdateEvent.const_410,this.onSongUpdate);
         param1.addEventListener(RoomWidgetSongUpdateEvent.const_403,this.onSongUpdate);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_892,this.onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_147,this.onClose);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_172,this.onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_140,this.onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_132,this.onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_152,this.onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.BOT,this.onBotInfo);
         param1.removeEventListener(RoomWidgetFurniInfoUpdateEvent.const_310,this.onFurniInfo);
         param1.removeEventListener(RoomWidgetUserTagsUpdateEvent.const_175,this.onUserTags);
         param1.removeEventListener(RoomWidgetUserFigureUpdateEvent.const_179,this.onUserFigureUpdate);
         param1.removeEventListener(RoomWidgetUserBadgesUpdateEvent.const_161,this.onUserBadges);
         param1.removeEventListener(RoomWidgetBadgeImageUpdateEvent.const_897,this.onBadgeImage);
         param1.removeEventListener(RoomWidgetPetInfoUpdateEvent.PET_INFO,this.onPetInfo);
         param1.removeEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,this.onPetCommands);
         param1.removeEventListener(RoomWidgetSongUpdateEvent.const_410,this.onSongUpdate);
         param1.removeEventListener(RoomWidgetSongUpdateEvent.const_403,this.onSongUpdate);
      }
      
      public function get userData() : InfostandUserData
      {
         return this.var_1500;
      }
      
      public function get furniData() : InfostandFurniData
      {
         return this.var_652;
      }
      
      public function get petData() : InfoStandPetData
      {
         return this._petData;
      }
      
      private function onUpdateTimer(param1:TimerEvent) : void
      {
         if(this.var_372 == null)
         {
            return;
         }
         messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_375,this.var_372.getCurrentPetId()));
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         this.userData.setData(param1);
         this.var_188.update(param1);
         this.selectView(this.const_1949);
         if(this.var_166)
         {
            this.var_166.stop();
         }
      }
      
      private function onBotInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         this.userData.setData(param1);
         this.var_448.update(param1);
         this.selectView(this.const_1948);
         if(this.var_166)
         {
            this.var_166.stop();
         }
      }
      
      private function onFurniInfo(param1:RoomWidgetFurniInfoUpdateEvent) : void
      {
         this.furniData.setData(param1);
         if(param1.extraParam == RoomWidgetInfostandExtraParamEnum.const_577)
         {
            this.var_993.update(param1);
            this.selectView(this.const_1946);
         }
         else if(param1.extraParam.indexOf(RoomWidgetInfostandExtraParamEnum.const_382) != -1)
         {
            this.var_992.update(param1);
            this.selectView(this.const_1945);
         }
         else
         {
            this.var_1229.update(param1);
            this.selectView(this.const_1944);
         }
         if(this.var_166)
         {
            this.var_166.stop();
         }
      }
      
      private function onPetInfo(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         this.petData.setData(param1);
         this.userData.petRespectLeft = param1.petRespectLeft;
         this.var_372.update(this.petData);
         this.selectView(this.const_1947);
         if(this.var_166)
         {
            this.var_166.start();
         }
      }
      
      private function onPetCommands(param1:RoomWidgetPetCommandsUpdateEvent) : void
      {
         this.var_372.updateEnabledTrainingCommands(param1.id,new CommandConfiguration(param1.allCommands,param1.enabledCommands));
      }
      
      private function onUserTags(param1:RoomWidgetUserTagsUpdateEvent) : void
      {
         if(param1.isOwnUser)
         {
            this.var_2640 = param1.tags;
         }
         if(param1.userId != this.userData.userId)
         {
            return;
         }
         if(param1.isOwnUser)
         {
            this.var_188.setTags(param1.tags);
         }
         else
         {
            this.var_188.setTags(param1.tags,this.var_2640);
         }
      }
      
      private function onUserFigureUpdate(param1:RoomWidgetUserFigureUpdateEvent) : void
      {
         if(param1.userId != this.userData.userId)
         {
            return;
         }
         if(this.userData.isBot())
         {
            this.var_448.image = param1.image;
         }
         else
         {
            this.var_188.image = param1.image;
            this.var_188.setMotto(param1.customInfo,param1.isOwnUser);
            this.var_188.achievementScore = param1.achievementScore;
         }
      }
      
      private function onUserBadges(param1:RoomWidgetUserBadgesUpdateEvent) : void
      {
         if(param1.userId != this.userData.userId)
         {
            return;
         }
         this.userData.badges = param1.badges;
         this.var_188.clearBadges();
      }
      
      private function onBadgeImage(param1:RoomWidgetBadgeImageUpdateEvent) : void
      {
         var _loc2_:int = this.userData.badges.indexOf(param1.badgeID);
         if(_loc2_ >= 0)
         {
            if(this.userData.isBot())
            {
               this.var_448.setBadgeImage(_loc2_,param1.badgeImage);
            }
            else
            {
               this.var_188.setBadgeImage(_loc2_,param1.badgeImage);
            }
            return;
         }
         if(param1.badgeID == this.userData.groupBadgeId)
         {
            this.var_188.setGroupBadgeImage(param1.badgeImage);
         }
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_546,param1.id,param1.category);
         messageListener.processWidgetMessage(_loc2_);
      }
      
      private function onRoomObjectRemoved(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:* = false;
         switch(param1.type)
         {
            case RoomWidgetRoomObjectUpdateEvent.const_140:
               _loc2_ = param1.id == this.var_652.id;
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_172:
               if(this.var_188 != null && this.var_188.window != null && this.var_188.window.visible)
               {
                  _loc2_ = param1.id == this.var_1500.userRoomId;
                  break;
               }
               if(this.var_372 != null && this.var_372.window != null && this.var_372.window.visible)
               {
                  _loc2_ = param1.id == this._petData.roomIndex;
                  break;
               }
               if(this.var_448 != null && this.var_448.window != null && this.var_448.window.visible)
               {
                  _loc2_ = param1.id == this.var_1500.userRoomId;
                  break;
               }
         }
         if(_loc2_)
         {
            this.close();
         }
      }
      
      private function onSongUpdate(param1:RoomWidgetSongUpdateEvent) : void
      {
         this.var_993.updateSongInfo(param1);
         this.var_992.updateSongInfo(param1);
      }
      
      public function close() : void
      {
         this.hideChildren();
         if(this.var_166)
         {
            this.var_166.stop();
         }
      }
      
      private function onClose(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         this.close();
         if(this.var_166)
         {
            this.var_166.stop();
         }
      }
      
      private function hideChildren() : void
      {
         var _loc1_:int = 0;
         if(this._mainContainer != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this._mainContainer.numChildren)
            {
               this._mainContainer.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
         }
      }
      
      private function selectView(param1:String) : void
      {
         this.hideChildren();
         var _loc2_:IWindow = this.mainContainer.getChildByName(param1) as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.visible = true;
         this.mainContainer.visible = true;
         this.mainContainer.width = _loc2_.width;
         this.mainContainer.height = _loc2_.height;
      }
      
      public function refreshContainer() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.mainContainer.numChildren)
         {
            _loc1_ = this.mainContainer.getChildAt(_loc2_);
            if(_loc1_.visible)
            {
               this.mainContainer.width = _loc1_.width;
               this.mainContainer.height = _loc1_.height;
            }
            _loc2_++;
         }
      }
   }
}

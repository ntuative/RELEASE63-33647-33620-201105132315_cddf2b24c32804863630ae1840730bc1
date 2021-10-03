package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_527:String = "RWUAM_WHISPER_USER";
      
      public static const const_528:String = "RWUAM_IGNORE_USER";
      
      public static const const_542:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_423:String = "RWUAM_KICK_USER";
      
      public static const const_536:String = "RWUAM_BAN_USER";
      
      public static const const_590:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_587:String = "RWUAM_RESPECT_USER";
      
      public static const const_518:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_603:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_556:String = "RWUAM_START_TRADING";
      
      public static const const_980:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_508:String = "RWUAM_KICK_BOT";
      
      public static const const_565:String = "RWUAM_REPORT";
      
      public static const const_595:String = "RWUAM_PICKUP_PET";
      
      public static const const_1796:String = "RWUAM_TRAIN_PET";
      
      public static const const_525:String = " RWUAM_RESPECT_PET";
      
      public static const const_375:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_708:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}

package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_553:String = "ROFCAE_DICE_OFF";
      
      public static const const_608:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_580:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_530:String = "ROFCAE_STICKIE";
      
      public static const const_623:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_593:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_465:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_507:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_489:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_610:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_561:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_629:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_614:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_630:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_597:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_269:String = "ROFCAE_MOUSE_BUTTON";
      
      public static const const_346:String = "ROFCAE_MOUSE_ARROW";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}

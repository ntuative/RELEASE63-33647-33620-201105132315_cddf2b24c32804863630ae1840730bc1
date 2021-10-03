package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2676:int;
      
      private var var_2675:int;
      
      private var var_2845:String;
      
      private var var_2844:int;
      
      private var var_2843:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2676 = param1;
         this.var_2675 = param2;
         this.var_2845 = param3;
         this.var_2844 = param4;
         this.var_2843 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2676,this.var_2675,this.var_2845,this.var_2844,int(this.var_2843)];
      }
      
      public function dispose() : void
      {
      }
   }
}

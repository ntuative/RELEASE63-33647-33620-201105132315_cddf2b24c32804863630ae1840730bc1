package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_885:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2676:int;
      
      private var var_2675:int;
      
      private var _color:uint;
      
      private var var_1214:int;
      
      private var var_2677:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_885);
         this.var_2676 = param1;
         this.var_2675 = param2;
         this._color = param3;
         this.var_1214 = param4;
         this.var_2677 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2676;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2675;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1214;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2677;
      }
   }
}

package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1646:int;
      
      private var _name:String;
      
      private var var_1306:int;
      
      private var var_2516:int;
      
      private var var_2394:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_680:String;
      
      private var var_2513:int;
      
      private var var_2514:int;
      
      private var var_2515:int;
      
      private var var_2473:int;
      
      private var var_2224:int;
      
      private var _ownerName:String;
      
      private var var_511:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1646;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1306;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2516;
      }
      
      public function get experience() : int
      {
         return this.var_2394;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_680;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2513;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2514;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2515;
      }
      
      public function get respect() : int
      {
         return this.var_2473;
      }
      
      public function get ownerId() : int
      {
         return this.var_2224;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_511;
      }
      
      public function flush() : Boolean
      {
         this.var_1646 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1646 = param1.readInteger();
         this._name = param1.readString();
         this.var_1306 = param1.readInteger();
         this.var_2516 = param1.readInteger();
         this.var_2394 = param1.readInteger();
         this.var_2513 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2514 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2515 = param1.readInteger();
         this.var_680 = param1.readString();
         this.var_2473 = param1.readInteger();
         this.var_2224 = param1.readInteger();
         this.var_511 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}

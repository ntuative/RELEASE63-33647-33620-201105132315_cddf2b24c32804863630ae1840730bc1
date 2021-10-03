package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1255:String = "M";
      
      public static const const_1913:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_465:int = 0;
      
      private var _name:String = "";
      
      private var var_1618:int = 0;
      
      private var var_1009:String = "";
      
      private var var_680:String = "";
      
      private var var_2319:String = "";
      
      private var var_2317:int;
      
      private var var_2314:int = 0;
      
      private var var_2316:String = "";
      
      private var var_2315:int = 0;
      
      private var var_2318:int = 0;
      
      private var var_2353:String = "";
      
      private var var_180:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_180 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_180)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_173;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_180)
         {
            this.var_173 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_174;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_180)
         {
            this.var_174 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_465;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_180)
         {
            this.var_465 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_180)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1618;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_180)
         {
            this.var_1618 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1009;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_180)
         {
            this.var_1009 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_680;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_180)
         {
            this.var_680 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2319;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_180)
         {
            this.var_2319 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2317;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_180)
         {
            this.var_2317 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2314;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_180)
         {
            this.var_2314 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2316;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_180)
         {
            this.var_2316 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2315;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_180)
         {
            this.var_2315 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2318;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_180)
         {
            this.var_2318 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2353;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_180)
         {
            this.var_2353 = param1;
         }
      }
   }
}

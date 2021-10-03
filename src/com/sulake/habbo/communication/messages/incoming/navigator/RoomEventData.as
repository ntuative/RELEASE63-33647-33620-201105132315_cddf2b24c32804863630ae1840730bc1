package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_2002:Boolean;
      
      private var var_2800:int;
      
      private var var_2801:String;
      
      private var var_355:int;
      
      private var var_2798:int;
      
      private var var_1996:String;
      
      private var var_2802:String;
      
      private var var_2799:String;
      
      private var var_880:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_880 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_2002 = false;
            return;
         }
         this.var_2002 = true;
         this.var_2800 = int(_loc2_);
         this.var_2801 = param1.readString();
         this.var_355 = int(param1.readString());
         this.var_2798 = param1.readInteger();
         this.var_1996 = param1.readString();
         this.var_2802 = param1.readString();
         this.var_2799 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_880.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_880 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2800;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2801;
      }
      
      public function get flatId() : int
      {
         return this.var_355;
      }
      
      public function get eventType() : int
      {
         return this.var_2798;
      }
      
      public function get eventName() : String
      {
         return this.var_1996;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2802;
      }
      
      public function get creationTime() : String
      {
         return this.var_2799;
      }
      
      public function get tags() : Array
      {
         return this.var_880;
      }
      
      public function get exists() : Boolean
      {
         return this.var_2002;
      }
   }
}

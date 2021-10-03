package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_355:int;
      
      private var var_2223:int;
      
      private var var_2222:Boolean;
      
      private var var_2224:int;
      
      private var _ownerName:String;
      
      private var var_115:RoomData;
      
      private var var_726:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_355 = param1.readInteger();
         this.var_2223 = param1.readInteger();
         this.var_2222 = param1.readBoolean();
         this.var_2224 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_115 = new RoomData(param1);
         this.var_726 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_115 != null)
         {
            this.var_115.dispose();
            this.var_115 = null;
         }
         if(this.var_726 != null)
         {
            this.var_726.dispose();
            this.var_726 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_355;
      }
      
      public function get userCount() : int
      {
         return this.var_2223;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2222;
      }
      
      public function get ownerId() : int
      {
         return this.var_2224;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_115;
      }
      
      public function get event() : RoomData
      {
         return this.var_726;
      }
   }
}

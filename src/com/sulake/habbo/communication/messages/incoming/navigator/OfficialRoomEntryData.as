package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1121:int = 1;
      
      public static const const_679:int = 2;
      
      public static const const_819:int = 3;
      
      public static const const_1682:int = 4;
       
      
      private var _index:int;
      
      private var var_2384:String;
      
      private var var_2383:String;
      
      private var var_2382:Boolean;
      
      private var var_2381:String;
      
      private var var_887:String;
      
      private var var_2385:int;
      
      private var var_2223:int;
      
      private var _type:int;
      
      private var var_2202:String;
      
      private var var_923:GuestRoomData;
      
      private var var_922:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2384 = param1.readString();
         this.var_2383 = param1.readString();
         this.var_2382 = param1.readInteger() == 1;
         this.var_2381 = param1.readString();
         this.var_887 = param1.readString();
         this.var_2385 = param1.readInteger();
         this.var_2223 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1121)
         {
            this.var_2202 = param1.readString();
         }
         else if(this._type == const_819)
         {
            this.var_922 = new PublicRoomData(param1);
         }
         else if(this._type == const_679)
         {
            this.var_923 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_923 != null)
         {
            this.var_923.dispose();
            this.var_923 = null;
         }
         if(this.var_922 != null)
         {
            this.var_922.dispose();
            this.var_922 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2384;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2383;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2382;
      }
      
      public function get picText() : String
      {
         return this.var_2381;
      }
      
      public function get picRef() : String
      {
         return this.var_887;
      }
      
      public function get folderId() : int
      {
         return this.var_2385;
      }
      
      public function get tag() : String
      {
         return this.var_2202;
      }
      
      public function get userCount() : int
      {
         return this.var_2223;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_923;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_922;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1121)
         {
            return 0;
         }
         if(this.type == const_679)
         {
            return this.var_923.maxUserCount;
         }
         if(this.type == const_819)
         {
            return this.var_922.maxUsers;
         }
         return 0;
      }
   }
}

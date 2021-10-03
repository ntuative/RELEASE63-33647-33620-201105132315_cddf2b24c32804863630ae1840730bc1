package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2447:String;
      
      private var var_2697:int;
      
      private var var_2205:int;
      
      private var var_2698:String;
      
      private var var_2699:int;
      
      private var var_1844:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2447 = param1.readString();
         this.var_2697 = param1.readInteger();
         this.var_2205 = param1.readInteger();
         this.var_2698 = param1.readString();
         this.var_2699 = param1.readInteger();
         this.var_1844 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2447;
      }
      
      public function get unitPort() : int
      {
         return this.var_2697;
      }
      
      public function get worldId() : int
      {
         return this.var_2205;
      }
      
      public function get castLibs() : String
      {
         return this.var_2698;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2699;
      }
      
      public function get nodeId() : int
      {
         return this.var_1844;
      }
   }
}

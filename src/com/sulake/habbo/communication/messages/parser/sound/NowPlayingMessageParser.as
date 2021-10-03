package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1940:int;
      
      private var _currentPosition:int;
      
      private var var_1937:int;
      
      private var var_1939:int;
      
      private var var_1938:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1940;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1937;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1939;
      }
      
      public function get syncCount() : int
      {
         return this.var_1938;
      }
      
      public function flush() : Boolean
      {
         this.var_1940 = -1;
         this._currentPosition = -1;
         this.var_1937 = -1;
         this.var_1939 = -1;
         this.var_1938 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1940 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1937 = param1.readInteger();
         this.var_1939 = param1.readInteger();
         this.var_1938 = param1.readInteger();
         return true;
      }
   }
}

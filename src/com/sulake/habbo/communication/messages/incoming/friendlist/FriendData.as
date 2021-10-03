package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1044:int;
      
      private var var_853:Boolean;
      
      private var var_1977:Boolean;
      
      private var var_680:String;
      
      private var var_1430:int;
      
      private var var_1958:String;
      
      private var var_1960:String;
      
      private var var_1959:String;
      
      private var var_2220:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1044 = param1.readInteger();
         this.var_853 = param1.readBoolean();
         this.var_1977 = param1.readBoolean();
         this.var_680 = param1.readString();
         this.var_1430 = param1.readInteger();
         this.var_1958 = param1.readString();
         this.var_1960 = param1.readString();
         this.var_1959 = param1.readString();
         this.var_2220 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1044;
      }
      
      public function get online() : Boolean
      {
         return this.var_853;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1977;
      }
      
      public function get figure() : String
      {
         return this.var_680;
      }
      
      public function get categoryId() : int
      {
         return this.var_1430;
      }
      
      public function get motto() : String
      {
         return this.var_1958;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1960;
      }
      
      public function get realName() : String
      {
         return this.var_1959;
      }
      
      public function get facebookId() : String
      {
         return this.var_2220;
      }
   }
}

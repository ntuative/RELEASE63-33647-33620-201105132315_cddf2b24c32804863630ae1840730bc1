package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2370:int;
      
      private var var_2057:String;
      
      private var var_2367:String;
      
      private var var_2372:Boolean;
      
      private var var_2368:Boolean;
      
      private var var_2366:int;
      
      private var var_2369:String;
      
      private var var_2371:String;
      
      private var var_1959:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2370 = param1.readInteger();
         this.var_2057 = param1.readString();
         this.var_2367 = param1.readString();
         this.var_2372 = param1.readBoolean();
         this.var_2368 = param1.readBoolean();
         param1.readString();
         this.var_2366 = param1.readInteger();
         this.var_2369 = param1.readString();
         this.var_2371 = param1.readString();
         this.var_1959 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2370;
      }
      
      public function get avatarName() : String
      {
         return this.var_2057;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2367;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2372;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2368;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2366;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2369;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2371;
      }
      
      public function get realName() : String
      {
         return this.var_1959;
      }
   }
}

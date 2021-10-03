package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2133:int = 1;
      
      public static const const_1729:int = 2;
       
      
      private var var_894:String;
      
      private var var_2734:int;
      
      private var var_2735:int;
      
      private var var_2738:int;
      
      private var var_2736:int;
      
      private var var_2741:Boolean;
      
      private var var_2500:Boolean;
      
      private var var_2520:int;
      
      private var var_2521:int;
      
      private var var_2740:Boolean;
      
      private var var_2739:int;
      
      private var var_2737:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_894 = param1.readString();
         this.var_2734 = param1.readInteger();
         this.var_2735 = param1.readInteger();
         this.var_2738 = param1.readInteger();
         this.var_2736 = param1.readInteger();
         this.var_2741 = param1.readBoolean();
         this.var_2500 = param1.readBoolean();
         this.var_2520 = param1.readInteger();
         this.var_2521 = param1.readInteger();
         this.var_2740 = param1.readBoolean();
         this.var_2739 = param1.readInteger();
         this.var_2737 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_894;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2734;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2735;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2738;
      }
      
      public function get responseType() : int
      {
         return this.var_2736;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2741;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2500;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2520;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2521;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2740;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2739;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2737;
      }
   }
}

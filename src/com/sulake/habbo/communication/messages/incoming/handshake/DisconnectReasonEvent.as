package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2156:int = 0;
      
      public static const const_1819:int = 1;
      
      public static const const_1759:int = 2;
      
      public static const const_2019:int = 3;
      
      public static const const_1997:int = 4;
      
      public static const const_1992:int = 5;
      
      public static const const_1789:int = 10;
      
      public static const const_2105:int = 11;
      
      public static const const_2118:int = 12;
      
      public static const const_2009:int = 13;
      
      public static const const_2170:int = 16;
      
      public static const const_2176:int = 17;
      
      public static const const_2061:int = 18;
      
      public static const const_2065:int = 19;
      
      public static const const_2016:int = 20;
      
      public static const const_1982:int = 22;
      
      public static const const_2178:int = 23;
      
      public static const const_2126:int = 24;
      
      public static const const_2166:int = 25;
      
      public static const const_2012:int = 26;
      
      public static const const_2038:int = 27;
      
      public static const const_2045:int = 28;
      
      public static const const_2077:int = 29;
      
      public static const const_2112:int = 100;
      
      public static const const_2172:int = 101;
      
      public static const const_2070:int = 102;
      
      public static const const_2187:int = 103;
      
      public static const const_2114:int = 104;
      
      public static const const_2116:int = 105;
      
      public static const const_2109:int = 106;
      
      public static const const_2005:int = 107;
      
      public static const const_2084:int = 108;
      
      public static const const_2013:int = 109;
      
      public static const const_2121:int = 110;
      
      public static const const_2185:int = 111;
      
      public static const const_2034:int = 112;
      
      public static const const_2171:int = 113;
      
      public static const const_2127:int = 114;
      
      public static const const_2081:int = 115;
      
      public static const const_2103:int = 116;
      
      public static const const_1988:int = 117;
      
      public static const const_2179:int = 118;
      
      public static const const_2047:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1819:
            case const_1789:
               return "banned";
            case const_1759:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}

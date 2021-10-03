package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1017:BigInteger;
      
      private var var_2172:BigInteger;
      
      private var var_1999:BigInteger;
      
      private var var_2789:BigInteger;
      
      private var var_1566:BigInteger;
      
      private var var_2000:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1566 = param1;
         this.var_2000 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1566.toString() + ",generator: " + this.var_2000.toString() + ",secret: " + param1);
         this.var_1017 = new BigInteger();
         this.var_1017.fromRadix(param1,param2);
         this.var_2172 = this.var_2000.modPow(this.var_1017,this.var_1566);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1999 = new BigInteger();
         this.var_1999.fromRadix(param1,param2);
         this.var_2789 = this.var_1999.modPow(this.var_1017,this.var_1566);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2172.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2789.toRadix(param1);
      }
   }
}

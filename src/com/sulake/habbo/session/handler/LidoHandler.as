package com.sulake.habbo.session.handler
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.messages.incoming.room.publicroom.OpenLockerRoomMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.room.publicroom.ExitLockerRoomMessageComposer;
   import com.sulake.habbo.session.IRoomHandlerListener;
   
   public class LidoHandler extends BaseHandler
   {
       
      
      public function LidoHandler(param1:IConnection, param2:IRoomHandlerListener)
      {
         super(param1,param2);
         if(param1 == null)
         {
            return;
         }
         param1.addMessageEvent(new OpenLockerRoomMessageEvent(this.method_13));
      }
      
      private function method_13(param1:OpenLockerRoomMessageEvent) : void
      {
         if(param1 == null || connection == null)
         {
            return;
         }
         connection.send(new ExitLockerRoomMessageComposer());
      }
   }
}

package com.sulake.core.assets.loaders
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   
   class AssetLoaderEventBroker extends EventDispatcher implements IDisposable
   {
      
      public static const NONE:uint = 0;
      
      public static const IO_ERROR:uint = 1;
      
      public static const SECURITY_ERROR:uint = 2;
       
      
      protected var var_408:int = 0;
      
      protected var var_337:int = 0;
      
      protected var var_2909:int = 2;
      
      protected var var_1799:uint = 0;
      
      function AssetLoaderEventBroker()
      {
         super();
      }
      
      public function get errorCode() : uint
      {
         return this.var_1799;
      }
      
      protected function loadEventHandler(param1:Event) : void
      {
         switch(param1.type)
         {
            case HTTPStatusEvent.HTTP_STATUS:
               this.var_408 = HTTPStatusEvent(param1).status;
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_1290,this.var_408));
               break;
            case Event.COMPLETE:
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_29,this.var_408));
               break;
            case Event.UNLOAD:
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_1299,this.var_408));
               break;
            case Event.OPEN:
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_1133,this.var_408));
               break;
            case ProgressEvent.PROGRESS:
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_1265,this.var_408));
               break;
            case IOErrorEvent.IO_ERROR:
               this.var_1799 = IO_ERROR;
               if(!this.retry())
               {
                  dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_48,this.var_408));
               }
               break;
            case SecurityErrorEvent.SECURITY_ERROR:
               this.var_1799 = SECURITY_ERROR;
               if(!this.retry())
               {
                  dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_48,this.var_408));
               }
               break;
            default:
               Logger.log("Unknown asset loader event! AssetLoaderEventBroker::loadEventHandler(" + param1 + ")");
         }
      }
      
      protected function retry() : Boolean
      {
         return false;
      }
   }
}

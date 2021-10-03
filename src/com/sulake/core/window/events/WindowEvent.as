package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1740:String = "WE_DESTROY";
      
      public static const const_300:String = "WE_DESTROYED";
      
      public static const const_1684:String = "WE_OPEN";
      
      public static const const_1643:String = "WE_OPENED";
      
      public static const const_1611:String = "WE_CLOSE";
      
      public static const const_1898:String = "WE_CLOSED";
      
      public static const const_1750:String = "WE_FOCUS";
      
      public static const const_313:String = "WE_FOCUSED";
      
      public static const const_1879:String = "WE_UNFOCUS";
      
      public static const const_1726:String = "WE_UNFOCUSED";
      
      public static const const_1833:String = "WE_ACTIVATE";
      
      public static const const_482:String = "WE_ACTIVATED";
      
      public static const const_1779:String = "WE_DEACTIVATE";
      
      public static const const_568:String = "WE_DEACTIVATED";
      
      public static const const_327:String = "WE_SELECT";
      
      public static const const_49:String = "WE_SELECTED";
      
      public static const const_504:String = "WE_UNSELECT";
      
      public static const const_589:String = "WE_UNSELECTED";
      
      public static const const_1711:String = "WE_LOCK";
      
      public static const const_1629:String = "WE_LOCKED";
      
      public static const const_1705:String = "WE_UNLOCK";
      
      public static const const_1818:String = "WE_UNLOCKED";
      
      public static const const_816:String = "WE_ENABLE";
      
      public static const const_279:String = "WE_ENABLED";
      
      public static const const_774:String = "WE_DISABLE";
      
      public static const const_277:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_409:String = "WE_RELOCATED";
      
      public static const const_1136:String = "WE_RESIZE";
      
      public static const const_39:String = "WE_RESIZED";
      
      public static const const_1734:String = "WE_MINIMIZE";
      
      public static const const_1773:String = "WE_MINIMIZED";
      
      public static const const_1659:String = "WE_MAXIMIZE";
      
      public static const const_1867:String = "WE_MAXIMIZED";
      
      public static const const_1719:String = "WE_RESTORE";
      
      public static const const_1720:String = "WE_RESTORED";
      
      public static const const_323:String = "WE_CHILD_ADDED";
      
      public static const const_417:String = "WE_CHILD_REMOVED";
      
      public static const const_208:String = "WE_CHILD_RELOCATED";
      
      public static const const_115:String = "WE_CHILD_RESIZED";
      
      public static const const_319:String = "WE_CHILD_ACTIVATED";
      
      public static const const_526:String = "WE_PARENT_ADDED";
      
      public static const const_1812:String = "WE_PARENT_REMOVED";
      
      public static const const_1699:String = "WE_PARENT_RELOCATED";
      
      public static const const_800:String = "WE_PARENT_RESIZED";
      
      public static const const_1115:String = "WE_PARENT_ACTIVATED";
      
      public static const const_174:String = "WE_OK";
      
      public static const const_586:String = "WE_CANCEL";
      
      public static const const_107:String = "WE_CHANGE";
      
      public static const const_479:String = "WE_SCROLL";
      
      public static const const_176:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_701:IWindow;
      
      protected var var_1093:Boolean;
      
      protected var var_481:Boolean;
      
      protected var var_476:Boolean;
      
      protected var var_702:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_701 = param3;
         _loc5_.var_481 = param4;
         _loc5_.var_476 = false;
         _loc5_.var_702 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_701;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_481;
      }
      
      public function recycle() : void
      {
         if(this.var_476)
         {
            throw new Error("Event already recycled!");
         }
         this.var_701 = null;
         this._window = null;
         this.var_476 = true;
         this.var_1093 = false;
         this.var_702.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1093;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1093 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1093;
      }
      
      public function stopPropagation() : void
      {
         this.var_1093 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1093 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_481 + " window: " + this._window + " }";
      }
   }
}

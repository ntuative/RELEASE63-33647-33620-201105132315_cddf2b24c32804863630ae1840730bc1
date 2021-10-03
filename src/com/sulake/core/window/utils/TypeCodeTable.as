package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_747;
         param1["bitmap"] = const_946;
         param1["border"] = const_872;
         param1["border_notify"] = const_1829;
         param1["bubble"] = const_780;
         param1["bubble_pointer_up"] = const_1125;
         param1["bubble_pointer_right"] = const_1120;
         param1["bubble_pointer_down"] = const_1261;
         param1["bubble_pointer_left"] = const_1336;
         param1["button"] = const_516;
         param1["button_thick"] = const_815;
         param1["button_icon"] = const_1647;
         param1["button_group_left"] = const_710;
         param1["button_group_center"] = const_864;
         param1["button_group_right"] = const_763;
         param1["canvas"] = const_777;
         param1["checkbox"] = const_851;
         param1["closebutton"] = const_1337;
         param1["container"] = const_427;
         param1["container_button"] = const_835;
         param1["display_object_wrapper"] = const_701;
         param1["dropmenu"] = const_524;
         param1["dropmenu_item"] = const_503;
         param1["frame"] = const_435;
         param1["frame_notify"] = const_1620;
         param1["header"] = const_702;
         param1["html"] = const_1314;
         param1["icon"] = const_1223;
         param1["itemgrid"] = const_1253;
         param1["itemgrid_horizontal"] = const_548;
         param1["itemgrid_vertical"] = const_866;
         param1["itemlist"] = const_1319;
         param1["itemlist_horizontal"] = const_399;
         param1["itemlist_vertical"] = const_378;
         param1["label"] = const_534;
         param1["maximizebox"] = const_1874;
         param1["menu"] = const_1664;
         param1["menu_item"] = const_1843;
         param1["submenu"] = const_1251;
         param1["minimizebox"] = const_1862;
         param1["notify"] = const_1809;
         param1["null"] = const_739;
         param1["password"] = const_724;
         param1["radiobutton"] = const_770;
         param1["region"] = const_529;
         param1["restorebox"] = const_1655;
         param1["scaler"] = const_601;
         param1["scaler_horizontal"] = const_1845;
         param1["scaler_vertical"] = const_1831;
         param1["scrollbar_horizontal"] = const_613;
         param1["scrollbar_vertical"] = const_837;
         param1["scrollbar_slider_button_up"] = const_1195;
         param1["scrollbar_slider_button_down"] = const_1227;
         param1["scrollbar_slider_button_left"] = const_1268;
         param1["scrollbar_slider_button_right"] = const_1106;
         param1["scrollbar_slider_bar_horizontal"] = const_1171;
         param1["scrollbar_slider_bar_vertical"] = const_1114;
         param1["scrollbar_slider_track_horizontal"] = const_1141;
         param1["scrollbar_slider_track_vertical"] = const_1118;
         param1["scrollable_itemlist"] = const_1783;
         param1["scrollable_itemlist_vertical"] = const_570;
         param1["scrollable_itemlist_horizontal"] = const_1209;
         param1["selector"] = const_737;
         param1["selector_list"] = const_758;
         param1["submenu"] = const_1251;
         param1["tab_button"] = const_894;
         param1["tab_container_button"] = const_1180;
         param1["tab_context"] = const_386;
         param1["tab_content"] = const_1263;
         param1["tab_selector"] = const_761;
         param1["text"] = const_498;
         param1["input"] = const_865;
         param1["toolbar"] = const_1743;
         param1["tooltip"] = const_442;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}

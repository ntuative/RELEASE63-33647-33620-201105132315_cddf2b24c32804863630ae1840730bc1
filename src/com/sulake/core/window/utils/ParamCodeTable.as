package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_196;
         param1["bound_to_parent_rect"] = const_102;
         param1["child_window"] = const_1278;
         param1["embedded_controller"] = const_1211;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_907;
         param1["mouse_dragging_target"] = const_245;
         param1["mouse_dragging_trigger"] = const_420;
         param1["mouse_scaling_target"] = const_355;
         param1["mouse_scaling_trigger"] = const_539;
         param1["horizontal_mouse_scaling_trigger"] = const_249;
         param1["vertical_mouse_scaling_trigger"] = const_259;
         param1["observe_parent_input_events"] = const_1311;
         param1["optimize_region_to_layout_size"] = const_585;
         param1["parent_window"] = const_1285;
         param1["relative_horizontal_scale_center"] = const_202;
         param1["relative_horizontal_scale_fixed"] = const_158;
         param1["relative_horizontal_scale_move"] = const_402;
         param1["relative_horizontal_scale_strech"] = const_393;
         param1["relative_scale_center"] = const_1248;
         param1["relative_scale_fixed"] = const_707;
         param1["relative_scale_move"] = const_1300;
         param1["relative_scale_strech"] = const_1165;
         param1["relative_vertical_scale_center"] = const_211;
         param1["relative_vertical_scale_fixed"] = const_142;
         param1["relative_vertical_scale_move"] = const_294;
         param1["relative_vertical_scale_strech"] = const_333;
         param1["on_resize_align_left"] = const_691;
         param1["on_resize_align_right"] = const_467;
         param1["on_resize_align_center"] = const_515;
         param1["on_resize_align_top"] = const_805;
         param1["on_resize_align_bottom"] = const_485;
         param1["on_resize_align_middle"] = const_477;
         param1["on_accommodate_align_left"] = const_1162;
         param1["on_accommodate_align_right"] = const_519;
         param1["on_accommodate_align_center"] = const_734;
         param1["on_accommodate_align_top"] = const_1331;
         param1["on_accommodate_align_bottom"] = const_584;
         param1["on_accommodate_align_middle"] = const_738;
         param1["route_input_events_to_parent"] = const_598;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1303;
         param1["scalable_with_mouse"] = const_1194;
         param1["reflect_horizontal_resize_to_parent"] = const_497;
         param1["reflect_vertical_resize_to_parent"] = const_502;
         param1["reflect_resize_to_parent"] = const_361;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1112;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}

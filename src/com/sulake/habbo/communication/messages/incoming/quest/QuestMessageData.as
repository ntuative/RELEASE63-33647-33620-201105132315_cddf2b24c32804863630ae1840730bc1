package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1815:String;
      
      private var var_2482:int;
      
      private var var_2484:int;
      
      private var var_1689:int;
      
      private var _id:int;
      
      private var var_1812:Boolean;
      
      private var _type:String;
      
      private var var_1813:String;
      
      private var _rewardCurrencyAmount:int;
      
      private var var_1814:String;
      
      private var var_2481:int;
      
      private var var_2483:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1815 = param1.readString();
         this.var_2482 = param1.readInteger();
         this.var_2484 = param1.readInteger();
         this.var_1689 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1812 = param1.readBoolean();
         this._type = param1.readString();
         this.var_1813 = param1.readString();
         this._rewardCurrencyAmount = param1.readInteger();
         this.var_1814 = param1.readString();
         this.var_2481 = param1.readInteger();
         this.var_2483 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_1813 = "";
         this._rewardCurrencyAmount = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1815;
      }
      
      public function get localizationCode() : String
      {
         return this.var_1814;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2482;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2484;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1689;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1812;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_1813;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this._rewardCurrencyAmount;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2481;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2483;
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1815;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_1814;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1812 = param1;
      }
   }
}

require 'rails_helper'

describe Creditcard do
  describe 'nill:false' do
    it "user_idが空の場合" do
      creditcard = build(:creditcard, user_id: "")
      creditcard.valid?
      expect(creditcard.errors[:user_id]).to include("を入力してください")
    end

    it "customer_idが空の場合" do
      creditcard = build(:creditcard, customer_id: "")
      creditcard.valid?
      expect(creditcard.errors[:customer_id]).to include("を入力してください")
    end

    it "card_idのトークンがない場合" do
      creditcard = build(:creditcard, card_id: "")
      creditcard.valid?
      expect(creditcard.errors[:card_id]).to include("を入力してください")
    end
    
  end
end

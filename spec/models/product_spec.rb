require 'rails_helper'

describe Product do
  describe "nil:false" do
    it "全ての項目が入力されていれば登録できること" do
      product = build(:product)
      expect(product).to be_valid
    end
  end
end
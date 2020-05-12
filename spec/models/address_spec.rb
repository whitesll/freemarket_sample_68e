require "rails_helper"
describe Address do
  describe "nill:false" do
    it "全ての項目が入力されていれば登録できること" do
      user = build(:address)
      expect(user).to be_valid
    end

    it "「お届け先氏名苗字」がない場合は登録できないこと" do
      user = build(:address, address_full_width_last_name: "")
      user.valid?
      expect(user.errors[:address_full_width_last_name]).to include("を入力してください")
    end

    it "「お届け先氏名名前」がない場合は登録できないこと" do
      user = build(:address, address_full_width_first_name: "")
      user.valid?
      expect(user.errors[:address_full_width_first_name]).to include("を入力してください")
    end

    it "「お届け先氏名苗字ふりがな」がない場合は登録できないこと" do
      user = build(:address, address_hira_last_name: "")
      user.valid?
      expect(user.errors[:address_hira_last_name]).to include("を入力してください")
    end

    it "「お届け先氏名名前ふりがな」がない場合は登録できないこと" do
      user = build(:address, address_hira_first_name: "")
      user.valid?
      expect(user.errors[:address_hira_first_name]).to include("を入力してください")
    end

    it "郵便番号がない場合は登録できないこと" do
      user = build(:address, zip_code: "")
      user.valid?
      expect(user.errors[:zip_code]).to include("を入力してください")
    end

    it "都道府県がない場合は登録できないこと" do
      user = build(:address, prefectures: "")
      user.valid?
      expect(user.errors[:prefectures]).to include("を入力してください")
    end

    it "市区町村がない場合は登録できないこと" do
      user = build(:address, city: "")
      user.valid?
      expect(user.errors[:city]).to include("を入力してください")
    end

    it "番地がない場合は登録できないこと" do
      user = build(:address, address: "")
      user.valid?
      expect(user.errors[:address]).to include("を入力してください")
    end
  end
end
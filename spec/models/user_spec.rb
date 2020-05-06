require "rails_helper"
describe User do
  describe "#create" do
    it "ニックネームがない場合は登録できないこと" do
      user = User.new(nickname: "", email: "aaaaa@gmail", password: "0000000",password_confirmation: "0000000", full_width_last_name: "あああ", full_width_first_name: "あああ", hira_last_name: "あああ", hira_first_name:"あああ", birth_date: "1991-08-21")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end
  end
end
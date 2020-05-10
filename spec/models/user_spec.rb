require "rails_helper"
describe User do
  describe "nill:false" do
    it "全ての項目が入力されていれば登録できること" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "ニックネームがない場合は登録できないこと" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end

    it "メールアドレスがない場合は登録できないこと" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "パスワードがない場合は登録できないこと" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end
    it "確認用パスワードがない場合は登録できないこと" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    it "苗字(全角)がない場合は登録できないこと" do
      user = build(:user, full_width_last_name: "")
      user.valid?
      expect(user.errors[:full_width_last_name]).to include("を入力してください")
    end

    it "名前(全角)がない場合は登録できないこと" do
      user = build(:user, full_width_first_name: "")
      user.valid?
      expect(user.errors[:full_width_first_name]).to include("を入力してください")
    end

    it "苗字ふりがな(全角)がない場合は登録できないこと" do
      user = build(:user, hira_last_name: "")
      user.valid?
      expect(user.errors[:hira_last_name]).to include("を入力してください")
    end

    it "名前ふりがな(全角)がない場合は登録できないこと" do
      user = build(:user, hira_first_name: "")
      user.valid?
      expect(user.errors[:hira_first_name]).to include("を入力してください")
    end

    it "生年月日がない場合は登録できないこと" do
      user = build(:user, birth_date: "")
      user.valid?
      expect(user.errors[:birth_date]).to include("を入力してください")
    end
  end

  describe "メールアドレスのバリデーション" do

    it "メールアドレスは一意であること" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end

    it "メールアドレスは@を含む必要がある" do
      user = build(:user, email: "aaattt")
      user.valid?
      expect(user.errors[:email]).to include("は不正な値です")
    end

    it "メールアドレスはドメインを含む必要がある(aaa@ttt)" do
      user = build(:user, email: "aaa@ttt")
      user.valid?
      expect(user.errors[:email]).to include("は不正な値です")
    end

    it "メールアドレスはドメインを含む必要がある(aaa@ttt.)" do
      user = build(:user, email: "aaa@ttt.")
      user.valid?
      expect(user.errors[:email]).to include("は不正な値です")
    end
  end

  describe "パスワードのバリデーション" do

    it "7文字以上" do
      user = build(:user, password: "aaaaaaa", password_confirmation: "aaaaaaa")
      expect(user).to be_valid
    end

    it "6文字以下" do
      user = build(:user, password: "aaaaaa", password_confirmation: "aaaaaa")
      user.valid?
      expect(user.errors[:password]).to include("は7文字以上で入力してください")
    end
  end

  describe "氏名入力が全角であること" do

    it "苗字(全角)nisiura" do
      user = build(:user, full_width_last_name: "nisiura")
      user.valid?
      expect(user.errors[:full_width_last_name]).to include("は不正な値です")
    end
    it "苗字(全角)NISHIURA" do
      user = build(:user, full_width_last_name: "NISHIURA")
      user.valid?
      expect(user.errors[:full_width_last_name]).to include("は不正な値です")
    end
    it "苗字(全角)ﾆｼｳﾗ" do
      user = build(:user, full_width_last_name: "ﾆｼｳﾗ")
      user.valid?
      expect(user.errors[:full_width_last_name]).to include()
    end



    it "名前(全角)keishiro" do
      user = build(:user, full_width_first_name: "keishiro")
      user.valid?
      expect(user.errors[:full_width_first_name]).to include("は不正な値です")
    end
    it "名前(全角)KEISHIRO" do
      user = build(:user, full_width_first_name: "KEISHIRO")
      user.valid?
      expect(user.errors[:full_width_first_name]).to include("は不正な値です")
    end
    it "名前(全角)ｹｲｼﾛｳ" do
      user = build(:user, full_width_first_name: "ｹｲｼﾛｳ")
      user.valid?
      expect(user.errors[:full_width_first_name]).to include()
    end


    it "苗字ふりがな(全角)nishiura" do
      user = build(:user, hira_last_name: "nisiura")
      user.valid?
      expect(user.errors[:hira_last_name]).to include("は不正な値です")
    end
    it "苗字ふりがな(全角)NISHIURA" do
      user = build(:user, hira_last_name: "NISHIURA")
      user.valid?
      expect(user.errors[:hira_last_name]).to include("は不正な値です")
    end
    it "苗字ふりがな(全角)ﾆｼｳﾗ" do
      user = build(:user, hira_last_name: "ﾆｼｳﾗ")
      user.valid?
      expect(user.errors[:hira_last_name]).to include()
    end


    it "名前ふりがな(全角)keishiro" do
      user = build(:user, hira_first_name: "keishiro")
      user.valid?
      expect(user.errors[:hira_first_name]).to include("は不正な値です")
    end
    it "名前ふりがな(全角)KEISHIRO" do
      user = build(:user, hira_first_name: "KEISHIRO")
      user.valid?
      expect(user.errors[:hira_first_name]).to include("は不正な値です")
    end
    it "名前ふりがな(全角)ｹｲｼﾛｳ" do
      user = build(:user, hira_first_name: "ｹｲｼﾛｳ")
      user.valid?
      expect(user.errors[:hira_first_name]).to include()
    end

  end
end
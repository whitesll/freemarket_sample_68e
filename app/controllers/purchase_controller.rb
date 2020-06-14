class PurchaseController < ApplicationController

  require 'payjp'

  def index
    @address = current_user.address
    @product = Product.find(params[:purchase_id])
    card = Creditcard.find_by(user_id: current_user.id)
    #Cardテーブルは前回記事で作成、テーブルからpayjpの顧客IDを検索
    if card.blank?
      #登録された情報がない場合にカード登録画面に移動
      redirect_to new_user_creditcard_path(current_user[:id])
    else
      Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_PRIVATE_KEY]
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def pay
    @product = Product.find(params[:purchase_id])
    card = Creditcard.find_by(user_id: current_user.id)
    Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_PRIVATE_KEY]
    Payjp::Charge.create(
    amount: @product.price, #支払金額を入力（itemテーブル等に紐づけても良い）
    customer: card.customer_id, #顧客ID
    currency: 'jpy', #日本円
  )
  redirect_to action: 'done', params: {purchase_id: params[:purchase_id]} #完了画面に移動
  end

  def  done
    @product_purchaser= Product.find(params[:purchase_id])
    @product_purchaser.update( buyer_id: current_user.id)
  end

end
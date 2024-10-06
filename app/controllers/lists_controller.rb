class ListsController < ApplicationController
  
  def new
    # viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成
    @list = List.new
  end

  def create
    #データを受け取り新規登録するためのインスタンスを作成
    list = List.new(list_params)
    #データをデータベースに保存するためのsaveメソッド実行
    list.save
    #トップ画面へのリダイレクト
    redirect_to '/top'
  end  


  def index
  end

  def show
  end

  def edit
  end
  
  
# ここから下はこのcontrollerの中でしか呼び出せません 
  private
  #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end

class ListsController < ApplicationController
  
  
  #(app/views/lists/new.html.erb)用------------------------------------------
  def new
    # viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成
    @list = List.new #List.new Listモデルの情報をもとに新しくオブジェクトが作成され、Listモデルに存在するtitle・bodyが格納できる

  end
  
#投稿されたデータを保存して詳細画面に移動-----------------------------------
  def create
    #データを受け取り新規登録するためのインスタンスを作成
    list = List.new(list_params)
    #データをデータベースに保存するためのsaveメソッド実行
    list.save
    #詳細画面へのリダイレクト
    redirect_to list_path(list.id)
  end  

#一覧画面(app/views/lists/index.html.erb)用のアクション
  def index
    @lists = List.all #List(モデル）.all 全てのレコードをまとめて取得
  end

#詳細画面
  def show
    @list =List.find(params[:id]) #/lists/1    => List.find(params[:id]) => idが1のレコードを取得
  end

#編集画面
  def edit
    @list = List.find(params[:id])
    
  end
  
  def update
    list =List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end
  
# ここから下はこのcontrollerの中でしか呼び出せません 
  private
  #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end

Rails.application.routes.draw do
  get 'lists/new' #views/lists/new.html.erb データの取得
  get '/top' => 'homes#top' #views/homes/top.html.erb　データの取得
  post 'lists' => 'lists#create' #lists_controller.rb 内変数 create 新しいデータの作成
  get 'lists' => 'lists#index'  #views/lists/index.html.erb　データの取得
  
  get 'lists/show'
  get 'lists/edit'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

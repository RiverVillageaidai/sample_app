Rails.application.routes.draw do
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'lists/new' #'lists'コントローラーの'new'アクションを呼び出す
  get '/top' => 'homes#top' #GETリクエストが `/top` というパスに対して送信された場合に、`homes`コントローラーの`top`アクションを呼び出す
  post 'lists' => 'lists#create' #lists_controller.rb 内変数 create 新しいデータの作成
  get 'lists' => 'lists#index'  #'lists'コントローラーの'index'アクションを呼び出す
  
  #どの投稿データを表示するかを判別するために、投稿データのidもURLに含めます。 
  #たとえば、URLが/lists/1の場合、params[:id] と記述すると、id=1を取り出せます。
  get 'lists/:id' => 'lists#show', as: 'list'#getリクエストがlists/:idというパスに送信された場合'lists'コントローラーの'show'アクションを呼び出す
  
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'

  patch 'lists/:id' => 'lists#update', as: 'update_list'
  
end

class List < ApplicationRecord
  
  has_one_attached :image #Listモデルにtitleとbodyに加えて画像を扱うためのimageカラムが追記されたかのように扱うことができます。
  
  
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
  
end

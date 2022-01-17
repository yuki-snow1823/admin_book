class Book < ApplicationRecord
  # costyというメソッドチェーンが使えるようになる
  scope :costy, -> { where("price >?", 3000) }
  scope :written_about, ->(theme) { where("name like ?", "%#{theme}%")}
end

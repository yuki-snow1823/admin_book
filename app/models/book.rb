class Book < ApplicationRecord
  # costyというメソッドチェーンが使えるようになる
  scope :costy, -> { where("price >?", 3000) }
end

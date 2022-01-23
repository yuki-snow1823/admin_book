class Book < ApplicationRecord
  # costyというメソッドチェーンが使えるようになる
  scope :costy, -> { where("price >?", 3000) }
  scope :written_about, ->(theme) { where("name like ?", "%#{theme}%")}

  belongs_to :publisher
  has_many :book_authors
  had_many :authors, through: :book_authors
end

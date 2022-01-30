class Book < ApplicationRecord
  # ハッシュでもシンボル数字でも設定できる
  enum sales_status: {
    reservation: 0, # 予約受付
    now_on_sale: 1, # 発売中
    end_of_print: 2, # 販売終了
  }
  # costyというメソッドチェーンが使えるようになる
  scope :costy, -> { where('price >?', 3000) }
  scope :written_about, ->(theme) { where('name like ?', "%#{theme}%") }

  belongs_to :publisher
  has_many :book_authors
  has_many :authors, through: :book_authors

  validates :name, presence: true
  validates :name, length: { maximum: 25 }
  validates :price, numericality: { greater_than_or_eaual_to: 0 }

  validate do |book|
    if book.name.include?('exercise')
      book.errors[:name] << "I don't like exercise."
    end
  end

  before_validation do # コールバックのポイント（まとめることもできる）
    self.name = self.name.gsub(/Cat/) do |matched|
      "lovely #{matched}"
    end
  end

  # 削除直後に実行
  def add_book_log
    Rails.logger.info "Book is deleted #{self.attributes}"
  end

  after_destroy :add_book_log
end

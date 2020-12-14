class Message < ApplicationRecord
  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
  
  belongs_to :room
  belongs_to :user
  has_one_attached :image
end

# self.でクラスメソッド？
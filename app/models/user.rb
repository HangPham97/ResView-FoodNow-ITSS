class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :confirmable,:recoverable, :rememberable, :validatable

  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy

  has_one_attached :avatar

  def is_admin?
    self.admin
  end

  # belongs_to :player

  # rails_admin do
  #   configure :player do
  #     label 'Owner of this ball: '
  #   end
  # end

end

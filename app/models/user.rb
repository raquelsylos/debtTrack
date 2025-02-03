class User < ApplicationRecord
  has_many :debts, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true 
end

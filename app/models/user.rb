class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :links, dependent: :destroy
  has_many :categories, dependent: :destroy
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :share_key, presence: true
  validates_uniqueness_of  :email


end

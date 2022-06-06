class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_picture, dependent: :destroy
  validates :profile_picture, content_type: [:png, :jpg, :jpeg]
  

  
  def full_name
    "#{first_name} #{last_name}" 
  end
end

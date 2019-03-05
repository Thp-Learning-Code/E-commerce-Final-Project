class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         has_one_attached :avatar
         has_many :administrated_pictures, class_name: "Picture", foreign_key: "administrator_id", dependent: :destroy
         validates :first_name, presence: true
         validates :last_name, presence: true
         validates :description, presence: true


after_create :welcome_send_user
def welcome_send_user
  UserMailer.welcome_email(self).deliver_now
  puts "wow"
end


end

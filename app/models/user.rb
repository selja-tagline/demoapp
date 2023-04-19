class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
    has_many :articles, dependent: :destroy
    has_many :events, dependent: :destroy

    validates :name, :surname, presence: true
    after_create :display_messages
    # after_create  :get_user_age
    after_touch  :get_user_age

    def display_messages 
        p "Action callback run successfully after commited"
    end
    def get_user_age
        if self.date_of_birth.present?
            age = Date.today.year - self.date_of_birth.year
            puts "***** Age of the User is #{age} ******"
        else
            puts "***** Sorry, Age of the User is not getting without their Birthdate ******"
        end
    end
end

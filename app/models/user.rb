class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :invitable, invite_for: 2.weeks



#RELATIONS
  has_many :courses, dependent: :destroy
  #has_many :materials
 # has_many :exercices, through: :courses
  #has_many :schools



  #PRESENTE
  validates :username,
            :contact,
            :email,
            :level,
            :school_name,
            :role, presence: true


  #UNIQUENESS
   validates :contact,
             :email, uniqueness: true
end

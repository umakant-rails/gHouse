class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :username, :role_id
  # attr_accessible :title, :body

  validates :email, presence: {message: 'email cann\'t be blank.'}
  validates :email, uniqueness: {:message => 'email must be unique.'}
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create, message: 'please enter the valid email address.'}
  validates :password, presence: true
  validates :password_confirmation, presence: true

end

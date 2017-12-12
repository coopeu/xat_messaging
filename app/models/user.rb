<<<<<<< HEAD
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users
  has_many :messages
end
=======
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users
  has_many :messages

  acts_as_messageable

	def name
		'User #{id}'
	end

	def mailboxer_email(object)
		nil
	end 

end
>>>>>>> messaging

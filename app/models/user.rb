class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

	add :remember_token to attr_accessible

	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

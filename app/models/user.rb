class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  rolify :before_add => :before_add_method
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
# belongs_to :role

	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]


           # before_create :set_default_role


def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end


def to_param
    username
end

   def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions.to_hash).first
      end
    end


  private
  # def set_default_role
  #   self.role ||= Role.find_by_name('registered')
  # end

 
def before_add_method(role)
    # do something before it gets added
  end

end

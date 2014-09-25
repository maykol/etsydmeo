class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise	:database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
	
	#validacion
	validates :name, presence: true

	#relación
	has_many :listings, dependent: :destroy
end

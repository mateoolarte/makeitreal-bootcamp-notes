class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
  has_many :addresses

  validates :email, uniqueness: true
  validates :password, length: { in: 8..16 }

  before_validation :sanitize

  before_create :creating

  private
    def sanitize
      email.downcase!
      username.downcase!
    end

    def creating
      puts "Se esta creando el usuario"
    end

    def created
      puts "Se ha creado el usuario #{:username}"
    end
end

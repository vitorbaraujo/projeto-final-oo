class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates_presence_of :cpf, :cep, :address
  #validates_presence_of :username, length: { in: 4..20 }
  #validates_length_of :cpf, :is => 11
  #validates_length_of :cep, :is => 8
  #validates_numericality_of :cpf, :cep

  has_many :posts

end

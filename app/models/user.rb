# frozen_string_literal: true

class User < ApplicationRecord
<<<<<<< HEAD
=======
  # validates :name, presence: true, allow_blank: false, on: :update, message: 'algo'
  validates_presence_of :name, on: :update, message: 'algo'
  validates :name,
            presence: { message: 'Por favor llena este campo con tu nombre completo' },
            on: :update

  validates :business_name,
            presence: { message: 'Por favor llena este campo con el nombre de tu negocio' },
            on: :update

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
>>>>>>> feature/user-crud
end

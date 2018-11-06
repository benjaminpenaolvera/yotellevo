# frozen_string_literal: true

class User < ApplicationRecord
  # validates :name, presence: true, allow_blank: false, on: :update, message: 'algo'
  validates_presence_of :name, on: :update, message: 'algo'
  validates :business_name,  presence: {message: "your custom message"}, on: :update

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

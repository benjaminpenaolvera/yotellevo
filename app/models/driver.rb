# frozen_string_literal: true

class Driver < ApplicationRecord
  attribute :status, :boolean, default: true
  validates :name, :email, :phone_number, :address, presence: true
end

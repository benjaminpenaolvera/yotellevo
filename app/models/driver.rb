# frozen_string_literal: true

class Driver < ApplicationRecord
  attribute :status, :boolean, default: true
  validates :name, presence: true
end

# frozen_string_literal: true

# Class
class Restaurant < ApplicationRecord
  has_many(:reviews, dependent: :destroy)

  CATEGORIES = %w[chinese italian japanese french belgian].freeze

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES,
                                    message: 'This is not a valid Category' }
end

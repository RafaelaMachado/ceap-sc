# frozen_string_literal: true

class Deputy < ApplicationRecord
  has_many :costs, dependent: :destroy
end

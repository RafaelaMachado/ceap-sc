# frozen_string_literal: true

# class responsible for the deputy data manipulation
class Deputy < ApplicationRecord
  has_many :costs, dependent: :destroy
end

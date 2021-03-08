# frozen_string_literal: true

# class responsible for the cost data manipulation
class Cost < ApplicationRecord
  belongs_to :deputy

  def self.totalCost
    sum(:vlrLiquido)
  end

  def self.maxCost
    order('`vlrLiquido` desc').first
  end
end

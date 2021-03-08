# frozen_string_literal: true

# class responsible for the cost data manipulation
class Cost < ApplicationRecord
  belongs_to :deputy

  def self.total_cost
    sum(:vlrLiquido)
  end

  def self.max_cost
    order('`vlrLiquido` desc').first
  end
end

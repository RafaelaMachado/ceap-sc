# frozen_string_literal: true

# class responsible for the deputies
class DeputiesController < ApplicationController
  def index
    @deputies = Deputy.all
  end

  def show
    @deputy = Deputy.find(params[:id])
    @costs = @deputy.costs
    @total_cost = Cost.totalCost
    @max_cost = Cost.maxCost
  end
end

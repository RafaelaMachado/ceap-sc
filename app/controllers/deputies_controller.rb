# frozen_string_literal: true

# class responsible for the deputies
class DeputiesController < ApplicationController
  def index
    @deputies = Deputy.all
  end

  def show
    @deputy = Deputy.find(params[:id])
    @costs = @deputy.costs
    @total_cost = Cost.total_cost
    @max_cost = Cost.max_cost
  end
end

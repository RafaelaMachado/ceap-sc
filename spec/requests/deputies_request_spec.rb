# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DeputiesController, type: :request do
  describe 'GET /deputies' do
    it 'returns http success' do
      get deputies_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /deputies/:id' do
    it 'returns http success' do
      deputy = create(:deputy)
      create(:cost, deputy: deputy)
      get deputy_path(id: deputy.id)
      expect(response).to have_http_status(:success)
    end
  end
end
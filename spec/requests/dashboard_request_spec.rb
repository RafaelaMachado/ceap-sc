# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DashboardController, type: :request do
  describe 'GET /' do
    it 'returns http success' do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /upload_csv' do
    context 'when the database is successfully uploaded' do
      it 'should redirect to deputies_path' do
        csv = Rack::Test::UploadedFile.new('spec/fixtures/test_success.csv')
        post upload_csv_path, params: { data: csv }
        expect(flash[:alert]).to eq('Dados importados com sucesso!!')
        expect(response).to redirect_to(deputies_path)
      end
    end

    context 'when the database is unsuccessfully uploaded' do
      before(:all) do
        Cost.destroy_all
        Deputy.destroy_all
      end

      it 'should return error' do
        csv = Rack::Test::UploadedFile.new('spec/fixtures/test_failure.csv')
        post upload_csv_path, params: { data: csv }
        expect(flash[:alert]).to eq('Erro ao importar dados!!')
        expect(response).to redirect_to(root_path)
      end
    end
  end
end

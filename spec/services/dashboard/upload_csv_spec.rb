# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Dashboard::UploadCsv, type: :service do
  context 'when the database is successfully uploaded' do
    before(:all) do
      csv = Rack::Test::UploadedFile.new('spec/fixtures/test_success.csv')
      @result = Dashboard::UploadCsv.call(csv)
    end

    it 'should return true' do
      expect(@result).to be(true)
    end

    it 'should only create deputy Jorge Goetten' do
      expect(Deputy.count).to eq(1)
      expect(Deputy.first.txNomeParlamentar).to eq('Jorge Goetten')
    end

    it 'should only create SC deputies' do
      expect(Deputy.where("sgUF != 'SC'").empty?).to be(true)
    end

    it 'should have only 12 costs' do
      expect(Deputy.find_by_txNomeParlamentar('Jorge Goetten').costs.count).to eq(12)
    end
  end

  context 'when the database is unsuccessfully uploaded' do
    before(:all) do
      Cost.destroy_all
      Deputy.destroy_all
      csv = Rack::Test::UploadedFile.new('spec/fixtures/test_failure.csv')
      @result = Dashboard::UploadCsv.call(csv)
    end

    it 'should return false' do
      expect(@result).to be(false)
    end

    it 'should not create deputies' do
      expect(Deputy.count).to eq(0)
    end

    it 'should not create costs' do
      expect(Cost.count).to eq(0)
    end
  end
end

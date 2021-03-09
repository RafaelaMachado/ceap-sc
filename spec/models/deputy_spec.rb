# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Deputy, type: :model do
  let(:deputy) { create(:deputy) }

  describe 'associations' do
    describe 'has_many :costs' do
      it 'should have relation with two costs' do
        cost_a = create(:cost, deputy: deputy)
        cost_b = create(:cost, deputy: deputy)
        expect(deputy.costs.count).to eq(2)
        expect(deputy.costs).to include(cost_a)
        expect(deputy.costs).to include(cost_b)
      end
    end
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cost, type: :model do
  let(:cost) { create(:cost) }

  describe 'associations' do
    describe 'belongs_to :deputy' do
      it { expect(cost.deputy).to be_instance_of(Deputy) }
    end
  end
end
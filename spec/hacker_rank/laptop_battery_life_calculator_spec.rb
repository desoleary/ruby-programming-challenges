require 'rails_helper'

RSpec.describe HackerRank::LaptopBatteryLifeCalculator do
  describe '.calculate_battery_life' do
    context 'when given a charge time' do
      it 'returns the predicted remaining battery life' do
        expect(described_class.calculate_battery_life(0.09)).to eq(0.18)
      end
    end
  end
end

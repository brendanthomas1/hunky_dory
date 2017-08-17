require 'rails_helper'

module HunkyDory
  RSpec.describe Change, type: :model do
    # VALIDATIONS
    it { is_expected.to validate_presence_of :summary }
    it { is_expected.to validate_presence_of :after_description }

    it { is_expected.to validate_length_of(:summary).is_at_most 255 }

    it 'validates length of before_description is <= 10,000' do
      is_expected.to validate_length_of(:before_description).is_at_most 10_000
    end

    it 'validates length of after_description is <= 10,000' do
      is_expected.to validate_length_of(:after_description).is_at_most 10_000
    end
  end
end

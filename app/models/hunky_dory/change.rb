module HunkyDory
  class Change < ApplicationRecord
    with_options presence: true do
      validates :summary, length: { maximum: 255 }
      validates :after_description, length: { maximum: 10_000 }
    end

    validates :before_description, length: { maximum: 10_000 }
  end
end

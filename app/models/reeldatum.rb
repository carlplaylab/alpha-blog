class Reeldatum < ApplicationRecord
  validates :machine, presence: true
  validates :data, presence: true, length: {minimum: 10}
end

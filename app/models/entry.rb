class Entry < ApplicationRecord
    validates :category, presence: true
    validates :location, presence: true
    validates :amount, presence: true
    validates :date, presence: true
end

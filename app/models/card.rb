class Card < ApplicationRecord
    has_many :addresses
    has_many :assignments
end

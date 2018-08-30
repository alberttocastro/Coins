class Macroregion < ApplicationRecord
    has_many :addresses
    has_many :cards
    has_many :publishers
end

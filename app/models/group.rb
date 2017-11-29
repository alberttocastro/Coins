class Group < ApplicationRecord
    has_many :publishers
    has_many :addresses
end

class Address < ApplicationRecord
    has_and_belongs_to_many :idioms
    belongs_to :adrstype
    belongs_to :macroregion
    belongs_to :group
    has_many :telephones
    has_many :visits
end

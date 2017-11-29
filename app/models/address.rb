class Address < ApplicationRecord
    belongs_to :nationality
    has_and_belongs_to_many :idioms
    belongs_to :adrstype
    belongs_to :publisher
    belongs_to :macroregion
    belongs_to :group
    has_many :telephones
end

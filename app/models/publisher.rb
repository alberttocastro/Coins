class Publisher < ApplicationRecord
    has_many :addresses
    belongs_to :group
    belongs_to :macroregion
end

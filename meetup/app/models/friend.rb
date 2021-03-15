class Friend < ApplicationRecord
    has_many :friend_variant
    belongs_to :user
    acts_as_paranoid
    
end

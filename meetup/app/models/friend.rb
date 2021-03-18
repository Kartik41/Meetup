class Friend < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    acts_as_paranoid
    
end

class Room < ApplicationRecord
    has_many :photos, dependent: :destroy
end

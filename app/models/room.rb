class Room < ApplicationRecord
    has_many   :photos, dependent: :destroy
    has_many   :reservations, dependent: :destroy
    belongs_to :user
end

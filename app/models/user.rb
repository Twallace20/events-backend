class User < ApplicationRecord
    has_many :events
    has_many :event_planners, through: :events
end

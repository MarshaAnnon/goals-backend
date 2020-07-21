class Topic < ApplicationRecord
    belongs_to :goal
    belongs_to :user

    validates :name, presence: true, uniqueness: true

    has_many_nested_attributes_for :goals

end

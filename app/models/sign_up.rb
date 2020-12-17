class SignUp < ApplicationRecord

    belongs_to :camper
    belongs_to :activity

    validates :time, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 23}
    validates :camper_id, uniqueness: { scope: :activity_id, message: " has already signed up for this activity."}
end

class SignUp < ApplicationRecord

    belongs_to :camper
    belongs_to :activity

    validates :time, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 23}
    validates :camper_id, uniqueness: { scope: :time, message: " is already signed up for an activity at that time."}
end

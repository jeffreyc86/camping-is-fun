class SignUp < ApplicationRecord

    belongs_to :camper
    belongs_to :activity

    validates :time, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 23}
    validates :camper_id, uniqueness: { scope: :time, message: " is unavailable at that time."}
    validates :camper_id, uniqueness: { scope: :activity_id, " is already signed up for that activity."}

end

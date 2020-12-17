class Camper < ApplicationRecord

    has_many :sign_ups
    has_many :activities, through: :sign_ups
    
    validates :name, uniqueness: true
    validates :age, numericality: {greater_than_or_equal_to: 8, less_than_or_equal_to: 18}
end

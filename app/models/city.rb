class City < ApplicationRecord
    has_many :appointments
    has_many :doctors
    has_many :patient
end

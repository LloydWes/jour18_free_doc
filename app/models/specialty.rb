class Specialty < ApplicationRecord
  has_many :join_specialties
  has_many :doctors, through: :join_specialties
end

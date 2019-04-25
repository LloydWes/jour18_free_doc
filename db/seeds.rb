# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# def fill_doctor # Filling doctors with different first_name, last_name and their specialty
  # Doctor.destroy_all
  # specialty_array = ["immunologist", "Anesthesiologist", "Cardiologist", "Rectal Surgeon", "Dermatilogist", "Endicronoligist", "Gastroenterologists ", "Emergency Medicine Specialists "]
  # 20.times do
  #   Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: specialty_array[rand(0...specialty_array.length)], zipcode: Faker::Address.zip_code)
  # end
# end
#fill_doctor

# def fill_patient # Filling patients with different first_name and last_name
#   Patient.destroy_all
#   100.times do
#     Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
#   end
# end
# fill_patient

# def fill_city #Filling cities with unique real 
#   100.times do
#     begin
#       city = City.create(name: Faker::Address.unique.city)
#   rescue
#      puts "Breaking because the same city name was sent twice"
#     break
#   end
# end
# end
# fill_city

# def fill_appointment_time #Fill appointments with random patients, doctors and dates
#   100.times do
#     Appointment.create(date: Faker::Time.between(120.days.ago, Date.today, :all), doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id)
#   end
# end
# fill_appointment_time

# def fill_specialties
#   specialty_array = ["immunologist", "Anesthesiologist", "Cardiologist", "Rectal Surgeon", "Dermatilogist", "Endicronoligist", "Gastroenterologists ", "Emergency Medicine Specialists "]
#   specialty_array.each do |current_specialty|
#     Specialty.create(name: current_specialty)
#   end
# end
# fill_specialties

def fill_join_specialties
  200.times do 
    JoinSpecialty.create!(doctor_id: Doctor.all.sample.id, specialty_id: Specialty.all.sample.id)
  end
end

fill_join_specialties



# Fill appointment city_id
# Appointment.all.each do |n| 
#   Appointment.where(id: n.id).update(city_id: City.all.sample.id)
#   # puts n.cities_id
#   # n.update(cities_id: City.all.sample.id)
#   # puts n.cities_id
#   # n.save
# end










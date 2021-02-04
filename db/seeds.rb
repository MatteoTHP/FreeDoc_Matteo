# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#faker
require'faker'


#detruit la db existante
City.destroy_all
Doctor.destroy_all
Speciality.destroy_all
Patient.destroy_all
Appointment.destroy_all
JoinSpecialityDoctor.destroy_all

#crée x5

#les villes
5.times do
    City.create( name: Faker::Nation.capital_city
)
end

#les docteur
5.times do
    Doctor.create( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: City.all.sample.id
    )
end

#les specialitées
5.times do
    Speciality.create( name: ["Psychiatry", "Urology", "Family medicine", "Neurology", "Pediatrics", "Dermatology", "Radiology", "Cardiology", "Obstetrics and gynecology"].sample
    )
    end

#les patients
5.times do
    Patient.create( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id
    )
end

#les rdv
5.times do
    Appointment.create( date: Faker::Time.forward, doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id, city_id: City.all.sample.id)
end

#le tableau qui lie speciality et docteur
5.times do 
    JoinSpecialityDoctor.create(doctor_id: Doctor.all.sample.id, speciality_id: Speciality.all.sample.id)
end


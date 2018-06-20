# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating jobs...'
jobs = [
  {
    name: "ANALYSTE FINANCIER",
    photo: "http://res.cloudinary.com/dozkmkl7p/image/upload/v1526917638/law4.jpg",
    synonym: "",
    short_description: "",
    description: "",
    study: "",
    salary: "",
    career: "",
    similar_job: [ "", "", "", "", ""],
    interest: [""],
    statut: ""
  },
  {
    name: "CHIRURGIEN / CHIRURGIENNE",
    photo: "http://res.cloudinary.com/dozkmkl7p/image/upload/v1526923661/surgeon.jpg",
    synonym: "",
    short_description: "",
    description: "",
    study: "",
    salary: "",
    career: "",
    similar_job: [ "", "", "", "", ""],
    interest: [""],
    statut: ""
  },
  {
    name: "ANIMATEUR / ANIMATRICE ENFANT",
    photo: "http://res.cloudinary.com/dozkmkl7p/image/upload/v1526923661/children.jpg",
    synonym: "",
    short_description: "",
    description: "",
    study: "",
    salary: "",
    career: "",
    similar_job: [ "", "", "", "", ""],
    interest: [""],
    statut: ""
  },
 {
   name: "PILOTE D'AVION",
   photo: "http://res.cloudinary.com/dozkmkl7p/image/upload/v1526923661/pilote.jpg",
   synonym: "",
   short_description: "",
   description: "",
   study: "",
   salary: "",
   career: "",
   similar_job: [ "", "", "", "", ""],
   interest: [""],
   statut: ""
 },
 {
   name: "DIRECTEUR DE RESTAURANT",
   photo: "http://res.cloudinary.com/dozkmkl7p/image/upload/v1526923661/restaurateur.jpg",
   synonym: "",
   short_description: "",
   description: "",
   study: "",
   salary: "",
   career: "",
   similar_job: [ "", "", "", "", ""],
   interest: [""],
   statut: ""
 },
 {
   name: "AMBULANCIER / AMBULANCIÈRE",
   photo: "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744139/ambulancier.jpg",
   synonym: "",
   short_description: "",
   description: "",
   study: "",
   salary: "",
   career: "",
   similar_job: [ "", "", "", "", ""],
   interest: [""],
   statut: ""
 },
 {
   name: "ANIMALIER DE LABORATOIRE",
   photo: "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744139/animalier_de_laboratoire.jpg",
   synonym: "",
   short_description: "",
   description: "",
   study: "",
   salary: "",
   career: "",
   similar_job: [ "", "", "", "", ""],
   interest: [""],
   statut: ""
 },
 {
   name: "ANIMATEUR / ANIMATRICE 2D/3D",
   photo: "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744139/animateur_2D_3D.jpg",
   synonym: "",
   short_description: "",
   description: "",
   study: "",
   salary: "",
   career: "",
   similar_job: [ "", "", "", "", ""],
   interest: [""],
   statut: ""
 },
 {
   name: "ANIMATEUR / ANIMATRICE DE FORMATION",
   photo: "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744139/animateur_de_formation.jpg",
   synonym: "",
   short_description: "",
   description: "",
   study: "",
   salary: "",
   career: "",
   similar_job: [ "", "", "", "", ""],
   interest: [""],
   statut: ""
 },
 {
   name: "DÉVELOPPEUR INFORMATIQUE",
   photo: "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744139/developpeur_informatique.jpg",
   synonym: "",
   short_description: "",
   description: "",
   study: "",
   salary: "",
   career: "",
   similar_job: [ "", "", "", "", ""],
   interest: [""],
   statut: ""
 },
 {
   name: "ACCASTILLEUR",
   photo: "http://res.cloudinary.com/dozkmkl7p/image/upload/v1521744140/accastilleur.jpg",
   synonym: "",
   short_description: "",
   description: "",
   study: "",
   salary: "",
   career: "",
   similar_job: [ "", "", "", "", ""],
   interest: [""],
   statut: ""
 }
]
jobs.each do |job|
  new_job = Job.new(job)
  new_job.remote_photo_url = job[:photo]
  new_job.save
end

puts 'Finished!'



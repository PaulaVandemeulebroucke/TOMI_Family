# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sectors = [
  {
    name: "TRANSPORT"
  },
  {
    name: "LOGISTIQUE"
  },
  {
    name: "SOCIAL"
  },
  {
    name: "INDUSTRIE"
  }
]
sectors.each do |sector|
  new_sector = Sector.new(sector)
  new_sector.save
end

#########################################

jobsectors = [
  {
    job: "AGENT DE CONTRÔLE DES TRANSPORTS",
    sector: "TRANSPORT"
  },
  {
    job: "AGENT DE CONTRÔLE DES TRANSPORTS",
    sector: "LOGISTIQUE"
  },
  {
    job: "AGENT D'ENTRETIEN",
    sector: "SOCIAL"
  },
  {
    job: "AFFÛTEUR / AFFUTEUSE",
    sector: "INDUSTRIE"
  }
]
jobsectors.each do |jobsector|
  new_jobsector = JobSector.create(job: Job.find_by_name(jobsector[:job]), sector: Sector.find_by_name(jobsector[:sector]))
  puts jobsector[:job]
end

puts 'Finished!'


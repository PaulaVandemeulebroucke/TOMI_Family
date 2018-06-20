# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jobinterests = [
  {
    job: "ANALYSTE FINANCIER",
    interest: "MANIER LES CHIFFRES"
  }
]
jobinterests.each do |jobinterest|
  new_jobinterest = JobInterest.create(job: Job.find_by_name(jobinterest[:job]), interest: Interest.find_by_name(jobinterest[:interest]))
end

puts 'Finished!'



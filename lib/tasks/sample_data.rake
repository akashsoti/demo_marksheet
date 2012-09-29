namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_marksheets
  end
end

def make_marksheets
	50.times do |n|
		Record.create(subject: Faker::Address.country,
									teacher: Faker::Name.name,
									mark_1: rand(100),
									mark_2: rand(100),
									mark_3: rand(100)
			)
	end
end
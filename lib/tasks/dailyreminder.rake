namespace :dailyreminder do
  task :reminder => :environment do
    Plant.all.each do |plant|


      plant.tasks.create
    end
  end
end
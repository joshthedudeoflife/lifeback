class Routine < ActiveRecord::Base
	belongs_to :user
	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			#creates new record
			#Routine.create! row.to_hash
			routine_hash = row.to_hash 
      routine = Routine.where(id: routine_hash["id"])

      if routine.count == 1
        routine.first.update_attributes(routine_hash)
      else
        routine.create!(routine_hash)
			end
		end
	end
end

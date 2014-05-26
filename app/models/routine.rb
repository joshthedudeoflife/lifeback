class Routine < ActiveRecord::Base
	belongs_to :user
	require 'CSV'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			#creates new record
			Routine.create! row.to_hash

		end
	end

end

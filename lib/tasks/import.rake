require 'csv'

desc "Imports a CSV file into an ActiveRecord table"

task :import, [:filename] => :environment do
		CSV.foreach('import/import.csv', :headers => true) do |row|
		Spree::Product.create!(row.to_hash)
	end
end
desc "Imports stuff from CSV"
task :import => :environment do
  require 'csv'

  csv_text = File.read('public/26ft_rates_032318.csv')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    TwentySixFootRate.create!(row.to_hash)
  end
end
require 'rubygems'
require 'roo'	

	def fetch_excel_data
      ex = Roo::Excel.new("public/parktimes.xls")
      ex.default_sheet = ex.sheets[0]
      1.upto(2691) do |line|
      start_time = ex.cell(line,'A')
      end_time = ex.cell(line,'B')
      @parkingspot = Parkingspot.create(:start_time => start_time, :end_time => end_time)
  end
end

fetch_excel_data
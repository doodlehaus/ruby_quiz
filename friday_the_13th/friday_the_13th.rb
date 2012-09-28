# dates must be entered as YYYY-MM-DD
class Jason

  require 'date'

  def initialize(start_date, end_date)
    @fridays_the_13th = []
    working_days(start_date, end_date)
  end

  def working_days(start_date, end_date)
    (start_date..end_date).each do |date|
      if date.day == 13 && date.friday?
        @fridays_the_13th << date
        puts "#{date}"
      end
    end
  end

  def avg_days_off
    diffs = @fridays_the_13th.each_cons(2).collect{ |a,b| b - a}
    sum = diffs.inject{|sum,a| sum + a}
    puts "Average number of days between Friday the 13th: #{(sum/diffs.length)*1.0}"
  end

  def work_days_per_year(start_date, end_date)
    years = (start_date.year..end_date.year).to_a
    per_year = @fridays_the_13th.collect{|d| d.year}

    c = []
    years.each do |y|
      c << per_year.count(y)
    end

    thirteenths_per_year =  c.inject(0.0) { |sum, x| sum + x}.to_f / years.size
    puts "Average number of Fridays the 13th per year: #{thirteenths_per_year}"

  end

end

start_date, end_date = Date.parse(ARGV[0]), Date.parse(ARGV[1])
j = Jason.new(start_date, end_date)

j.working_days(start_date, end_date)
j.avg_days_off
j.work_days_per_year(start_date, end_date)

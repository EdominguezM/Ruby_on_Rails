class Appointment
  attr_accessor :location, :purpose, :hour, :min

  def initialize(location, purpose, hour, min)
    @location = location
    @purpose = purpose
    @hour = hour
    @min = min
  end
  # def location
  #   @location
  # end
  # def purpose
  #   @purpose
  # end
  # def hour
  #   @hour
  # end
  # def min
  #   @min
  # end
end

class MonthlyAppointment < Appointment
  attr_accessor :day
  def initialize(location, purpose, hour, min, day)
    super(location, purpose, hour, min)
    @day = day
  end

  # def day
  #   @day
  # end

  def occurs_on?(day)
    day == @day
  end
  def to_s
    "Reunión mensual en #{location} sobre #{purpose} el día #{day}\n"
  end
end

class DailyAppointment < Appointment
  def occurs_on?(hour, min)
    hour == @hour &&
    min == @min
  end
  def to_s
    "Reunión diaría en #{location} sobre #{purpose} a las #{hour}:#{min}\n"
  end
end

class OnTimeAppointment < Appointment
  attr_accessor :day, 
                :month, 
                :year
  def initialize(location, purpose, hour, min, day, month, year)
    super(location, purpose, hour, min)
    @day = day 
    @month = month
    @year = year
  end
  # def day
  #   @day
  # end
  # def month
  #   @month
  # end
  # def year
  #   @year
  # end
  def occurs_on?(day, month, year)
    day == @day &&
    month == @month &&
    year == @year 
  end
  def to_s
    "Reunión unica en #{location} sobre #{purpose} el #{day}/#{month}/#{year} a las #{hour}:#{min}\n"
  end
end


puts OnTimeAppointment.new('desafio latam', 'trabajo', 14, 30, 4, 6, 2019)

puts DailyAppointment.new('Desafio Latam', 'Educación', 8, 15)

puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)
#puts a.occurs_on?(15)



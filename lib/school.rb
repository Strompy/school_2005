class School

attr_reader :start_time,
            :hours_in_school_day,
            :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def end_time
    time_int = @start_time.to_i
    time_int += @hours_in_school_day
    time_int.to_s + ":00"
  end

  def standard_student_names()
    standard_names = @student_names
    standard_names.collect! { |name| name.capitalize }
  end

  def convert_end_time_to_clock_time
    clock_end = @start_time.to_i
    clock_end += @hours_in_school_day
    clock_end -= 12
    clock_end.to_s + ":00"
  end

end

class CalendarController < ApplicationController
  def index
    @surgery_appt = SurgeryAppt.all
  end
end

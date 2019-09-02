require "pry"

require_relative "appointment.rb"
require_relative "doctor.rb"


class Patient

    attr_accessor :name, :doctor

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|app| app.patient == self}
    end

    def doctors
        self.appointments.map do |a| a.doctor end
    end

end
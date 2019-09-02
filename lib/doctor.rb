require "pry"

require_relative "appointment.rb"
require_relative "patient.rb"

class Doctor

    attr_accessor :name, :patient

    @@all = []


    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select{|app| app.doctor == self}
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.collect{|a| a.patient}
    end

end
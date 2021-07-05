require_relative './doctor'
require_relative './appointment'

class Patient

    @@all=[]
    
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select{|a| a.patient == self}
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def doctors
        appointments.map{|a| a.doctor}
    end

end 
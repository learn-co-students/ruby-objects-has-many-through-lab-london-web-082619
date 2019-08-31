class Patient

    @@all = []

    attr_accessor :name

    def initialize(name) #Patient.new
        @name = name
        @@all << self
    end

    def self.all #Patient.all
        @@all
    end

    def new_appointment(doctor, date) #patient.new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments #patient.appointments
        Appointment.all.select{ |appointment| appointment.patient == self }
    end

    def doctors #patient.doctors
        self.appointments.collect{ |appointment| appointment.doctor }
    end


end
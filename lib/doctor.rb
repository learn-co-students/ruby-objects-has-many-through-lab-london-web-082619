class Doctor

    @@all = []
    attr_accessor :name


    def initialize(name) #Doctor.new(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments #doctor.appointments
        #returns all appointments associated with this Doctor (FAILED - 13)
        Appointment.all.select{ |appointment| appointment.doctor == self }
    end

    def new_appointment(patient, date)
        #creates appointment
        Appointment.new(date, patient, self)
    end

    def patients #doctor.patients
        #has many patients, through appointments
        self.appointments.collect{ |appointment| appointment.patient }
    end


end
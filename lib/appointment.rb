class Appointment 

    @@all = []
    attr_accessor :date, :patient, :doctor

    def initialize(date, patient, doctor) #Appointment.new(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all #Appointment.all
        @@all
    end

end
class Appointment


    attr_reader :patient, :doctor   # changed to reader from accessor
    attr_accessor :date
    
    @@all = []

    def initialize(date, patient, doctor)
       @date = date
       @patient = patient
       @doctor = doctor
       self.class.all << self

    end

    def self.all
        @@all
    end
   
end
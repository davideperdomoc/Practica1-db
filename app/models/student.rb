class Student < ApplicationRecord
    has_many :student_carrers
    has_many :students, through: :student_carrers
    
    validates :first_name, presence: true, length: {maximun: 15}
    
    after_find :show_message
    
    private
        def show_message
            puts "Se ha encontrado estudiante"
        end
end

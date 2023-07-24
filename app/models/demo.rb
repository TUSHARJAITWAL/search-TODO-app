class Demo < ApplicationRecord
    include Validatable
    has_one :sub_demo

    # after_save :greeting_message

    # def greeting_message
    #     puts "Hey! I will run after you save an object! "
    # end
    before_validation :check_name_must_present

    around_save :greeting_message

    def greeting_message
        if self.name.length >= 10
            puts "Name length is greater than 10"
        else
            puts "Name length is less  than 10"

        end
    end

    def check_name_must_present
        self.name = "test" if self.name.blank?
    end

end

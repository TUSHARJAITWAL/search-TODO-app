class ApplicationController < ActionController::Base
    
    protected

    def after_sign_in_path_for(resource)
        admin_students_path
    end



    # before_action :print_display_message

    # after_action :after_display_message


    # private

    # def print_display_message
    #     puts "I am an inherited before action filter"
    # end

    # def after_display_message
    #     puts "========================================="
    #     puts "I am an inherited after action filter"
    #     puts "========================================="
    # end
    

end

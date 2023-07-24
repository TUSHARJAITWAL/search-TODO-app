class StudentsController < ApplicationController
    # include ApplicationHelper
    before_action :set_students , only: %i[show edit update  destroy]
    # helper_method :formatted_date


    def index
        if params[:search].present?
            @students = Student.where("first_name LIKE ? OR email LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
        else
            @students = Student.all
        end
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        if @student.save 
            redirect_to students_path , notice: "Student has been Created Successfully"
        else
            render :new, status: :unprocessable_entity

        end
    end

    def show 
    end  

    def edit
     
    end

    def update
        if @student.update(student_params)
            redirect_to students_path , notice: "Student has been Updated Successfully"
        else
            render :new
        end
    end

    def destroy
        @student.destroy
        redirect_to students_path , notice: "Student has been Deleted Successfully"
    end

    def test
    end

    private
    def student_params
        params.require(:student).permit(:first_name,:last_name,:email,:date_of_birth,:address,:contact)
    end

    def set_students
        @student = Student.find(params[:id])
    end

    # def formatted_date(date)
    #     date.strftime('%A %b  %d  %Y')
    # end


end
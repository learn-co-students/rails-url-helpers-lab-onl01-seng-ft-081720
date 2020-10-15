class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    #find a student
    @student = Student.find(params[:id])
    # check and see if they're active
    # if active, switch to inactive
    @student.active = !@student.active
    #save
    @student.save
    #redirect
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
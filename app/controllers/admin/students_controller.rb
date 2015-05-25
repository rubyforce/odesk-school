class Admin::StudentsController < ApplicationController
  respond_to :json

  def index
    @students = Student.all
    render :json => @students.as_json(:include => :students_fees_heads)
  end

  def show
    @student = Student.find(params[:id])

    render :json => @student.as_json(:include => :students_fees_heads)
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    if params[:student][:students_fees_heads_attributes].blank?
      params[:student].delete(:students_fees_heads_attributes)
    end
    @student.save

    render :json => @student.as_json(:include => :students_fees_heads)
  end

  def edit
    @student = Student.find(params[:id])
    render :json => @student.as_json(:include => :students_fees_heads)
  end

  def update
    @student = Student.find(params[:id])
    if params[:student][:students_fees_heads_attributes].blank?
      params[:student].delete(:students_fees_heads_attributes)
    end
    @student.update_attributes(params[:student])
    render :json => @student.as_json(:include => :students_fees_heads)
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    render :json => @student.as_json(:include => :students_fees_heads)
  end
end

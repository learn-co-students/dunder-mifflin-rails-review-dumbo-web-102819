class EmployeesController < ApplicationController

    def index 
        @employees = Employee.all
        render :index
    end 
    
    def show
        @employee = Employee.find(params[:id])
    end 
    
    def new
        @employee = Employee.new
    end 
    
    def create 
        @employee = Employee.new(params.require(:employee).permit(:first_name, :last_name, :alias,:title, :img_url,:dog_id))
        @employee.save
        redirect_to employee_path(@employee)
        end 
    
    def edit
        @employee = Employee.find(params[:id])
    end 
    
    def update
        @employee =Employee.find(params[:id])
        @employee.update(params.require(:employee).permit(:first_name, :last_name, :alias,:title, :img_url,:dog_id))
     redirect_to employee_path(@employee)
    end 







end

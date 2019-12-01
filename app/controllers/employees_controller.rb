class EmployeesController < ApplicationController
    def index 
        @employees = Employee.all
    end 
    def show
        @employee = Employee.find(params[:id])
    end 
    def new 
        @employee = Employee.new 
    end 
    def create 
        @employee = Employee.create(params.require(:employee).permit(:office, :first_name, :last_name, :alias, :title, :img_url, :dog_id))
        if @employee
            redirect_to employee_path(@employee)
        else
            render :new 
        end 
    end 
end

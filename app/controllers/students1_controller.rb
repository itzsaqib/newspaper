class  Students1Controller < ApplicationController

    def index
        #binding.break 
        @student1s = Student1.all
    end
    def show
        @student1 = Student1.find(params[:id])
    end

    def new
        @student1 = Student1.new
    end

    def create
        @student1 = Student1.new(student1_params)
        if @student1.save
          redirect_to students1_path  # Redirect to the index page
        else
            render :new
        end
    end

    def edit
        @studnent1=Student1.find(params[:id])

    end

    def update
        @student1 = Student1.find(params[:id])
        if @student1.update(student1_params)
            redirect_to students1_path
        else
         
            render :edit
        end
    end

    def destroy
        @student1 = Student1.find(params[:id])
        @student1.destroy
        redirect_to student1s_path
    end
      
    
    private
    
    def student1_params
        params.require(:student1).permit(:first_name, :last_name, :email, :address)
    end
end

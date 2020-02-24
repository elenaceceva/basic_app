class ToDosController < ApplicationController

   def new
     @to_do = ToDo.new
   end

   def destroy
   end

   def index
     @to_do = ToDo.where(user_id: session[:user_id])
   end

   def create
     @user = User.find(session[:user_id])
     @to_do = ToDo.create(content: params[:to_do][:content], user: @user)
     redirect_to to_dos_path
   end

   private

    def to_do_params
      params.require(:to_do).permit(:content)
    end
end

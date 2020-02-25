class ToDosController < ApplicationController

   def new
     @to_do = ToDo.new
   end

   def destroy
     @to_do = ToDo.find(params[:id])
     @to_do.destroy
     flash[:success] = "Todo List item was deleted."
     redirect_to to_dos_path
   end

   def index
     @to_dos = ToDo.where(user_id: session[:user_id])
   end

   def create
     @user = User.find(session[:user_id])
     @to_do = ToDo.create(content: params[:to_do][:content], user: @user)
     redirect_to to_dos_path
   end

   def edit
     @to_do = ToDo.find(params[:id])
   end

   def update
     @to_do = ToDo.find(params[:id])
     @to_do.update_attributes(to_do_params)
     redirect_to to_dos_path

   end
   private

    def to_do_params
      params.require(:to_do).permit(:content, :status)
    end


end

class ToDosController < ApplicationController

   def new
      @to_do = @user.to_dos.create(to_do_params)
      redirect_to @user
   end

   def destroy
   end

   private

    def to_do_params
      params.require(:to_do).permit(:content)
    end
end

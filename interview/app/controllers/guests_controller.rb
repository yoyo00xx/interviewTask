class GuestsController < ApplicationController
    def new
        @guest = Guest.new
      end
      
      def create
        @guest = Guest.create(guest_params)
        if @guest.save
            redirect_to '/guests/wait'
        end
      end
      
      private
    
      def guest_params
        params.require(:guest).permit(:name, :email, :number)
      end
    
end

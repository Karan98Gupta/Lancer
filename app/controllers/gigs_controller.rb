class GigsController < ApplicationController

	def index
	end

    def new
	    @gig= current_user.gigs.build
    end

	 def create
    @gig = current_user.gigs.build(gig_params)
    

    if @gig.save
    
      redirect_to @gig
    else 
      render 'new'
   end
  end

  def show

  end



	private
	def gig_params
		params.require(:gig).permit(:name,:description,:budget,:location,:open, :user_id)
	end
end
  
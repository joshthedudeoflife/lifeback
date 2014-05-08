class ThoughtsController < ApplicationController
	 before_action :authenticate_user!
	 def index
  	@thoughts = Thought.all
  end
  def show
  	#@thought = Thought.find params[:id]
  end

  def new
  	@thought = Thought.new
  	#Retrieve and return a view with a form for creating
  	#a new movie
  end


  def create
  	@thought = Thought.new(safe_params)
    # Make sure a key is in the params hash
    # _require_ method

    # Add stuff to the whitelist
    # _permit_ method

  	if @thought.save
  		redirect_to :action => :show, :id => @thought.id
  	else
  		render :new
  	end
  	# {
  	# 	thought:
  	# 	{
  	# 		content: "banana",
  	# 	}	
  	# }
  	#This method takes values from an HTTP POST request
  	#and attempts to create a new thought record in the DB
  end
  def edit
  	@thought = Thought.find params[:id]
  end
  def update
  	@thought = Thought.find params[:id]

  	if @thought.update(safe_params)
  		redirect_to @thought
  	else
  		render :edit
  	end
  end

  private

    def safe_params
      params.require(:thought).permit(:content)
    end

end



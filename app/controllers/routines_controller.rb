class RoutinesController < ApplicationController
	require 'csv'
	def index
		@routines = Routine.all
	end
	def show
		@routines = Routine.all
		#@routine = Routine.find params[:id] 
	end
	def new
	end
	def import
	Routine.import(params[:file])
  redirect_to root_url, notice: "Routine imported."
	end
end

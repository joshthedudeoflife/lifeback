class RoutinesController < ApplicationController
	require 'csv'
	
	def index
		@routines = Routine.all
		      #  @graph = LazyHighCharts::HighChart.new('column') do |f|
        #    f.series(:name=>'Correct',:data=> [1, 2, 3, 4, 5])
        #    f.series(:name=>'Incorrect',:data=> [10, 2, 3, 1, 4] )       
        #    f.title({ :text=>"clickable bar chart"})
        #    f.legend({:align => 'right', 
        #             :x => -100, 
        #             :verticalAlign=>'top',
        #             :y=>20,
        #             :floating=>"true",
        #             :backgroundColor=>'#FFFFFF',
        #             :borderColor=>'#CCC',
        #             :borderWidth=>1,
        #             :shadow=>"false"
        #             })
        #    f.options[:chart][:defaultSeriesType] = "column"
        #    f.options[:xAxis] = {:plot_bands => "none", :title=>{:text=>"Time"}, :categories => ["1.1.2011", "2.1.2011", "3.1.2011", "4.1.2011", "5.1.2011"]}
        #    f.options[:yAxis][:title] = {:text=>"Answers"}
        #    f.options[:plot_options][:column] = {:stacking=>'normal', 
        #       :cursor => 'pointer',
        #       :point => {:events => {:click => js_function}}
        #    }  
        # end 
		 @bar = LazyHighCharts::HighChart.new('column') do |f|
      f.series(:name=>'Sleep',:data=> [3, 20, 3, 5, 4, 10, 12 ])
      f.series(:name=>'Steps',:data=>[1, 3, 4, 3, 3, 5, 4, 46] )
      f.series(:name=>'Active Minutes',:data=>[1, 3, 4, 3, 3, 5, 4, 46] )
      f.series(:name=>'Meetings Attendance',:data=>[1, 3, 4, 3, 3, 5, 4, 46] )       
      f.title({ :text=>"HEALTH POINTS"})
      f.options[:xAxis][:title] = {:text=>"Date"}
      f.options[:yAxis][:title] = {:text=>"Points"}

      ###  Options for Bar
      ### f.options[:chart][:defaultSeriesType] = "bar"
      ### f.plot_options({:series=>{:stacking=>"normal"}}) 

      ## or options for column
      f.options[:chart][:defaultSeriesType] = "column"
      f.plot_options({:column=>{:stacking=>"percent"}})
    end
	end
	
	def show
		@routines = Routine.all
		#@routine = Routine.find params[:id]
		#FNORD_METRIC.event(@routines.attributes.merge(_type: :view_routines))
	end
	
	def new
	end
	
	def import
	Routine.import(params[:file])
  redirect_to root_url, notice: "Routine imported."
	end

end

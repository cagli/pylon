class LessonsController < ApplicationController
 
  before_action :authenticate_user!
 

 # def chapter:references
 #  end



def index
     @chapter = Chapter.find(params[:chapter_id])
 end

def new
     @chapter = Chapter.find(params[:chapter_id])
     @lesson = @chapter.lessons.new
  end

def edit
end

# def show
# 	end

def create
    @chapter = Chapter.find(params[:chapter_id])
    @lesson = @chapter.lessons.new(lesson_params)
		  if @lesson.save
		    flash[:success] = "Lesson created"
		    redirect_to chapter_lessons_path
		  else
		    flash[:error] = "problem"
		    render action: :new
		end

end
# Never trust parameters from the scary internet, only allow the white list through.
    private
    def lesson_params
      params.require(:lesson).permit(:lesson_id, :title, :description, :url_video, :teacher, :teacher_notes, :url_attachement)
    end

end
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
     @course = @chapter.course
     # code below remove layout from modal
    respond_to do |format|
         format.html {render :layout => false} #add this line.
   end
  end

def edit
      
end


def create

    @chapter = Chapter.find(params[:chapter_id])
    @lesson = @chapter.lessons.new(lesson_params)
    @course = @chapter.course 

		  if @lesson.save
		    flash[:success] = "Lesson created"
		    redirect_to course_path(@course)
		  else
		    flash[:error] = "problem"
		    render action: :new
		end

end


def show
  @lesson = Lesson.find(params[:id])
  @chapter = @lesson.chapter
  @course = @chapter.course       
end

# Never trust parameters from the scary internet, only allow the white list through.
    private
    def lesson_params
      params.require(:lesson).permit(:id, :lesson_id, :title, :description, :url_video, :teacher, :teacher_notes, :url_attachement)
    end

end
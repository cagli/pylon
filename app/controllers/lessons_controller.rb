class LessonsController < ApplicationController
 
  before_action :authenticate_user!
 
# def index
#      @chapter = Chapter.find(params[:chapter_id])
#  end

def new
@chapter = Chapter.find(params[:chapter_id])
@lesson = @chapter.lessons.new
@course = @chapter.course
     # code below remove layout from modal
  respond_to do |format|
       format.html {render :layout => false} #add this line.
  end
end

def show
  @lesson = Lesson.find(params[:id])
  @chapter = @lesson.chapter
  @course = @chapter.course       
end

def create

@chapter = Chapter.find(params[:chapter_id])
@lesson = @chapter.lessons.new(lesson_params)
@course = @chapter.course 

  if @lesson.save
    flash[:success] = "Lesson created"
    redirect_to edit_course_path(@course)
  else
    flash[:error] = "problem"
    render action: :new
  end

end

def edit
      
@lesson = Lesson.find(params[:id])
@chapter = @lesson.chapter
@course = @chapter.course
    # @course = Course.find(params[:course_id])
    # @chapter = @course.chapters.find(params[:id])
    respond_to do |format|
         format.html {render :layout => false} 
    end
end


def update
  @lesson = Lesson.find(params[:id])
@chapter = @lesson.chapter
@course = @chapter.course
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to edit_course_path(@course), notice: 'Lesson was successfully updated.' }
        # format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        # format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end





def destroy
    @lesson = Lesson.find(params[:id])
    @chapter = @lesson.chapter
    @course = @chapter.course
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to edit_course_path(@course), notice: 'chapter was successfully destroyed.' }
      format.json { head :no_content }
    end
end

# Never trust parameters from the scary internet, only allow the white list through.
    private
    def lesson_params
      params.require(:lesson).permit(:id, :lesson_id, :title, :description, :url_video, :teacher, :teacher_notes, :url_attachement)
    end

end
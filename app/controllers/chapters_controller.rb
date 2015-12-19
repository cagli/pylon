class ChaptersController < ApplicationController

  # before_action :set_chapter, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!


     # @chapter = Chapter.find(params[:id])
# layout false

def index
    # @chapter = Chapter.find(params[:id])
    # @course = @chapter.course
     @course = Course.find(params[:course_id])
     @chapters = @course.chapters.all
 end


# GET /chapters/1
  # GET /chapters/1.json
  # def show
  # end

  # GET /chapters/new
  def new

    @course = Course.find(params[:course_id])
    @chapter = @course.chapters.new
    # code below remove layout from modal
    respond_to do |format|
         format.html {render :layout => false} #add this line.
   end
  end


 #  def sort
 #    @course = Course.find(params[:course_id])
 #    if request.get?
 #      # @course = Course.find(params[:course_id])
 #      @chapters = @course.chapters
 # elsif request.post?
 #      @chapter = Chapter.find(params[:chapter_id])
 #      params[:order].each do |key,value|
 #      @chapter.update_attribute(:chapter_id,value[:position])
 #    end
 #    render :nothing => true
 #  end
 #  end



  # GET /chapters/1/edit
  def edit

    @chapter = Chapter.find(params[:id])
    @course = @chapter.course
    # @course = Course.find(params[:course_id])
    # @chapter = @course.chapters.find(params[:id])
    respond_to do |format|
         format.html {render :layout => false} 
         # add this line.
   end
  end

  # POST /chapters
  # POST /chapters.json
  def create
    @course = Course.find(params[:course_id])
    @chapter = @course.chapters.new(chapter_params)
    # respond_modal_with @chapter, location: root_path

  if @chapter.save
    flash[:success] = "ajout d'un chapitre"
    redirect_to edit_course_path(@course)
  else
    flash[:error] = "probleme d'ajout d'un chapitre"
    render action: :new
    redirect_to edit_course_path(@course)
  end
end




  # PATCH/PUT /chapters/1
  # PATCH/PUT /chapters/1.json
  def update
    @chapter = Chapter.find(params[:id])
    @course = @chapter.course
    respond_to do |format|
      if @chapter.update(chapter_params)
        format.html { redirect_to edit_course_path(@course), notice: 'chapter was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapter }
      else
        format.html { render :edit }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapters/1
  # DELETE /chapters/1.json
  def destroy
    @chapter = Chapter.find(params[:id])
    @course = @chapter.course
    @chapter.destroy
    respond_to do |format|
      format.html { redirect_to edit_course_path(@course), notice: 'chapter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


# Never trust parameters from the scary internet, only allow the white list through.
    private
    def chapter_params
      params.require(:chapter).permit(:id, :title, :description, :logo, :points, :position)
    end
end 




  #   respond_to do |format|
  #     if @chapter.save
  #       format.html { redirect_to @chapter, notice: 'chapter was successfully created.' }
  #       format.json { render :show, status: :created, location: @chapter }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @chapter.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  # private
    # Use callbacks to share common setup or constraints between actions.
    # def set_chapter
    #   @chapter = chapter.find(params[:id])
    # end

    


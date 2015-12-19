class CoursesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_course, only: [:show, :edit, :update, :destroy]

 attr_reader :courses
 helper_method :courses




 @courses = Course.all

  # GET /courses
  # GET /courses.json

  # def to_param
  #  "#{id}-#{title}"
  # end


  def index
    @courses = Course.all
    # @courses = Course.scoped
  end


  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])
    authorize! :read, @course
 end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
    authorize! :edit, @course 
        if request.get?
          @course = Course.find(params[:id])
          @chapters = @course.chapters
     elsif request.put?
          params[:order].each do |key,value|
          Chapter.find(value[:id]).update_attribute(:position,value[:position])
          flash.now[:alert] =   'suis dans la boucle.' 
        end
        flash.now[:alert] =   'en dehors' 
        render :nothing => true
      end
    
    end


# def sort
#     params[:order].each do |key,value|
#       Chapter.find(value[:id]).update_attribute(:position,value[:position])
#     end
#     render :nothing => true
#   end

# def sort
#   @course = Course.find(params[:id])
#   @course.chapters.each do | chapter |
#     chapter.position = params["course"].index(chapter.id.to_s)+1
#     chapter.save
#   end
# end

    
   #  respond_to do |format|
   #       format.html {render :layout => false} #add this line.
   # end
  # end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)
    authorize! :create, @course
    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    authorize! :destroy, @course 
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end
    
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:course_id, :title, :description, :course_icon, :category, :level, :teacher, :learning_skills, :course_points)
    end
end

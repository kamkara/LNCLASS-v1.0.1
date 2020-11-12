class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_materials, only: [:index, :show, :new, :edit, :create]
  before_action :find_levels, only: [:index, :show, :new, :edit, :create]
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  def index
    @courses = Course.all
  end

  # GET /courses/1
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
    render layout: "dashboard"
  end

  # GET /courses/1/edit
  def edit
    render layout: "dashboard"
  end

  # POST /courses
  def create
    @course         = current_user.courses.build(course_params)
    @course.author  = current_user.username
    @course.memo    = current_user.memo

    if @course.save
      redirect_to @course, notice: 'Course was successfully created.'
      render layout: "dashboard"
    else
      render :new
      render layout: "dashboard"
    end
  end

  # PATCH/PUT /courses/1
  def update
    if @course.update(course_params)
      redirect_to @course, notice: 'Course was successfully updated.'
      render layout: "dashboard"

    else
      render :edit
      render layout: "dashboard"
    end
  end

  # DELETE /courses/1
  def destroy
    @course.destroy
    redirect_to courses_url, notice: 'Course was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.friendly.find(params[:id])
    end

    def find_materials
      @materials = Material.all
    end

    def find_levels
      @levels = Level.all
    end
    # Only allow a trusted parameter "white list" through.
    def course_params
      params.require(:course).permit(:title, :content, :author, :memo, :material_id, :level_id)
    end
end

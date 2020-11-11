class ExercicesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_exercice, only: [:show, :edit, :update, :destroy]
  before_action :set_course

  # POST /exercices
  def create
    @exercice         = @course.exercices.build(exercice_params)
    @exercice.user_id=  current_user.id#track exercices creator unique
    @exercice.author  = current_user.username,#author

    respond_to do |format|
      if @exercice.save
       format.html {redirect_to @exercice}
       format.js {}# render create.js
      else
       format.html {render :new}
      end
    end
  end

  # GET /exercices
  def index
    @exercices = Exercice.all
  end

  # GET /exercices/1

  def show
  end

  # GET /exercices/new
  def new
    @exercice = Exercice.new
  end

  # GET /exercices/1/edit
  def edit
  end


  # PATCH/PUT /exercices/1
  def update
    if @exercice.update(exercice_params)
      redirect_to @exercice, notice: 'Exercice was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /exercices/1
  def destroy
    @exercice.destroy
    redirect_to exercices_url, notice: 'Exercice was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercice
      @exercice = Exercice.find(params[:id])
    end
    def set_course
      @course = Course.friendly.find(params[:course_id])
    end

    # Only allow a trusted parameter "white list" through.
    def exercice_params
      params.require(:exercice).permit(:title, :content, :author, :search, :slug, :user_id, :course_id)
    end
end

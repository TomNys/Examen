class CourseSupervisionCrossoversController < ApplicationController
  before_action :set_course_supervision_crossover, only: [:show, :edit, :update, :destroy]

  # GET /course_supervision_crossovers
  # GET /course_supervision_crossovers.json
  def index
    @course_supervision_crossovers = CourseSupervisionCrossover.all
  end

  # GET /course_supervision_crossovers/1
  # GET /course_supervision_crossovers/1.json
  def show
  end

  # GET /course_supervision_crossovers/new
  def new
    @course_supervision_crossover = CourseSupervisionCrossover.new
  end

  # GET /course_supervision_crossovers/1/edit
  def edit
  end

  # POST /course_supervision_crossovers
  # POST /course_supervision_crossovers.json
  def create
    @course_supervision_crossover = CourseSupervisionCrossover.new(course_supervision_crossover_params)

    respond_to do |format|
      if @course_supervision_crossover.save
        format.html { redirect_to @course_supervision_crossover, notice: 'Course supervision crossover was successfully created.' }
        format.json { render :show, status: :created, location: @course_supervision_crossover }
      else
        format.html { render :new }
        format.json { render json: @course_supervision_crossover.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_supervision_crossovers/1
  # PATCH/PUT /course_supervision_crossovers/1.json
  def update
    respond_to do |format|
      if @course_supervision_crossover.update(course_supervision_crossover_params)
        format.html { redirect_to @course_supervision_crossover, notice: 'Course supervision crossover was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_supervision_crossover }
      else
        format.html { render :edit }
        format.json { render json: @course_supervision_crossover.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_supervision_crossovers/1
  # DELETE /course_supervision_crossovers/1.json
  def destroy
    @course_supervision_crossover.destroy
    respond_to do |format|
      format.html { redirect_to course_supervision_crossovers_url, notice: 'Course supervision crossover was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_supervision_crossover
      @course_supervision_crossover = CourseSupervisionCrossover.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_supervision_crossover_params
      params.require(:course_supervision_crossover).permit(:course_crossover2_id, :supervision_crossover_id)
    end
end

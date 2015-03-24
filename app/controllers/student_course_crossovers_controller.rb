class StudentCourseCrossoversController < ApplicationController
  before_action :set_student_course_crossover, only: [:show, :edit, :update, :destroy]

  # GET /student_course_crossovers
  # GET /student_course_crossovers.json
  def index
    @student_course_crossovers = StudentCourseCrossover.all
  end

  # GET /student_course_crossovers/1
  # GET /student_course_crossovers/1.json
  def show
  end

  # GET /student_course_crossovers/new
  def new
    @student_course_crossover = StudentCourseCrossover.new
  end

  # GET /student_course_crossovers/1/edit
  def edit
  end

  # POST /student_course_crossovers
  # POST /student_course_crossovers.json
  def create
    @student_course_crossover = StudentCourseCrossover.new(student_class_crossover_params)

    respond_to do |format|
      if @student_course_crossover.save
        format.html { redirect_to @student_course_crossover, notice: 'Student class crossover was successfully created.' }
        format.json { render :show, status: :created, location: @student_course_crossover }
      else
        format.html { render :new }
        format.json { render json: @student_course_crossover.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_course_crossovers/1
  # PATCH/PUT /student_course_crossovers/1.json
  def update
    respond_to do |format|
      if @student_course_crossover.update(student_class_crossover_params)
        format.html { redirect_to @student_course_crossover, notice: 'Student class crossover was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_course_crossover }
      else
        format.html { render :edit }
        format.json { render json: @student_course_crossover.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_course_crossovers/1
  # DELETE /student_course_crossovers/1.json
  def destroy
    @student_course_crossover.destroy
    respond_to do |format|
      format.html { redirect_to student_class_crossovers_url, notice: 'Student class crossover was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_class_crossover
      @student_course_crossover = StudentCourseCrossover.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_class_crossover_params
      params.require(:student_course_crossover).permit(:student_crossover_id, :course_crossover1_id)
    end
end

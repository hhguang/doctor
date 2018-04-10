class DiagnosesController < ApplicationController
  before_action :set_patient
  before_action :set_diagnosis, only: [:show, :edit, :update, :destroy]

  # GET /diagnoses
  # GET /diagnoses.json
  def index
    @diagnoses = Diagnosis.all
  end

  # GET /diagnoses/1
  # GET /diagnoses/1.json
  def show
  end

  # GET /diagnoses/new
  def new
    @diagnosis = Diagnosis.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /diagnoses/1/edit
  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  # POST /diagnoses
  # POST /diagnoses.json
  def create
    @diagnosis = @patient.diagnoses.build(diagnosis_params)

    respond_to do |format|
      if @diagnosis.save
        format.html { redirect_to @diagnosis, notice: 'Diagnosis was successfully created.' }
        format.json { render :show, status: :created, location: @diagnosis }
        format.js
      else
        format.html { render :new }
        format.json { render json: @diagnosis.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /diagnoses/1
  # PATCH/PUT /diagnoses/1.json
  def update
    respond_to do |format|
      if @diagnosis.update(diagnosis_params)
        format.html { redirect_to @diagnosis, notice: 'Diagnosis was successfully updated.' }
        format.json { render :show, status: :ok, location: @diagnosis }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @diagnosis.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /diagnoses/1
  # DELETE /diagnoses/1.json
  def destroy
    @diagnosis.destroy
    respond_to do |format|
      format.html { redirect_to patient_url(@patient), notice: 'Diagnosis was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_patient
      @patient = Patient.find(params[:patient_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnosis
      @diagnosis = Diagnosis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diagnosis_params
      params.require(:diagnosis).permit(:patient_id, :heart_rate, :bp, :bs, :prescription)
    end
end

class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:show, :edit, :update, :destroy]

  # GET /candidates
  # GET /candidates.json
  def index
    @candidates = Candidate.all
  end

  # GET /candidates/1
  # GET /candidates/1.json
  def show
  end

  # GET /candidates/new
  def new
    @candidate_temp1=Candidate.order("candidate_id DESC").first
    
    if @candidate_temp1.nil?
      @candidate=Candidate.new(:candidate_id => 1)
    else
      @new_ID=Integer(@candidate_temp1.candidate_id) + 1
      @candidate=Candidate.new(:candidate_id => @new_ID)
    end   
 end

  # GET /candidates/1/edit
  def edit
  end

  # POST /candidates
  # POST /candidates.json
  def create
    @candidate = Candidate.new(candidate_params)

    respond_to do |format|
      if @candidate.save
        format.html { redirect_to @candidate, notice: 'Candidate was successfully created.' }
        format.json { render :show, status: :created, location: @candidate }
      else
        format.html { render :new }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candidates/1
  # PATCH/PUT /candidates/1.json
  def update
    respond_to do |format|
      if @candidate.update(candidate_params)
        format.html { redirect_to @candidate, notice: 'Candidate was successfully updated.' }
        format.json { render :show, status: :ok, location: @candidate }
      else
        format.html { render :edit }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidates/1
  # DELETE /candidates/1.json
  def destroy
    @candidate.destroy
    respond_to do |format|
      format.html { redirect_to candidates_url, notice: 'Candidate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate
      @candidate = Candidate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidate_params
      params.require(:candidate).permit(:date_of_apply, :first_name, :last_name, :city_of_birth, :date_of_birth, :country_of_birth, :current_location, :preferred_work_location, :preferred_contact_phone, :email, :language1, :language1_level, :language2, :language2_level, :language3, :language3_level, :language4, :language4_level, :language5, :language5_level, :language6, :language6_level, :language7, :language7_level, :language8, :language8_level, :language9, :language9_level, :language10, :language10_level, :education1_start_date, :education1_end_date, :univercity1, :major1, :education1_level, :note1, :education2_start_date, :education2_end_date, :univercity2, :major2, :education2_level, :note2, :education3_start_date, :education3_end_date, :univercity3, :major3, :education3_level, :note3, :education4_start_date, :education4_end_date, :univercity4, :major4, :education4_level, :note4, :education5_start_date, :education5_end_date, :univercity5, :major5, :education5_level, :note5, :work1_start_date, :work1_end_date, :company1, :title1, :work1_desc, :work2_start_date, :work2_end_date, :company2, :title2, :work2_desc, :work3_start_date, :work3_end_date, :company3, :title3, :work3_desc, :work4_start_date, :work4_end_date, :company4, :title4, :work4_desc, :work5_start_date, :work5_end_date, :company5, :title5, :work5_desc, :ex_merkler, :current_job_title, :current_salary, :expect_salary, :onboard_date, :self_assessment, :channel, :channel_detail, :referred_by, :req_position_title, :candidate_id, :field1, :field2, :field3, :field4, :field5, :field6, :field7, :field8, :field9, :field10)
    end
end

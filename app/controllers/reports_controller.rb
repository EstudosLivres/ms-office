class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]
  before_action :init_nested, only: [:new, :edit, :update, :create]

  # GET /reports
  # GET /reports.json
  def index
    @reports = Report.all
  end

  # GET /reports/customs
  def customs
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
  end

  # GET /reports/new
  def new
    @report = Report.new
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)

    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: 'Report was successfully created.' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url, notice: 'Report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Initiate it nested dependencies
    def init_nested
      @registers = []
      @documents = Document.all

      if params[:document_id]
        @document = Document.where(id: params[:document_id]).take
        @registers = @document.registers.group(:value)
        @columns = @document.columns
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      report_hash = params.require(:report).permit(:name)
      report_hash[:filters] = []
      filters_params = params.require(:report)[:filters_attributes]
      @document = Document.where(id: params[:document_id]).take

      filters_params.each_with_index do |filter_attr, i|
        register_id = filter_attr.last['register']
        if !register_id.empty?
          report_hash[:filters] << Filter.new(column_id: @document.columns[i].id, register_id: register_id.to_i)
        end
      end

      report_hash
    end
end

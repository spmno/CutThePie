class WorkRecordsController < ApplicationController
  before_action :set_work_record, only: [:show, :edit, :update, :destroy]
  respond_to :html
  before_action :authenticate_user!

  def index
    @work_records = WorkRecord.all
    respond_with(@work_records)
  end

  def show
    respond_with(@work_record)
  end

  def new
    @work_record = WorkRecord.new
    respond_with(@work_record)
  end

  def edit
  end

  def create
    @work_record = WorkRecord.new(work_record_params)
    @work_record.save
    respond_with(@work_record)
  end

  def update
    @work_record.update(work_record_params)
    respond_with(@work_record)
  end

  def destroy
    @work_record.destroy
    respond_with(@work_record)
  end

  private
    def set_work_record
      @work_record = WorkRecord.find(params[:id])
    end

    def work_record_params
      params.require(:work_record).permit(:user_id, :content, :record_date, :duration)
    end
end

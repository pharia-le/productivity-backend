class LogsController < ApplicationController
  before_action :set_log, only: [:show, :edit, :update, :destroy]

  def index
    @logs = Log.all
    render json: @logs
  end

  def show
    render json: @log
  end

  def new
    @log = Log.new
  end

  def edit
  end

  def create
    @log = Log.new(log_params)
    if @log.save
      render :show, status: :created, location: @log
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  def update
    if @log.update(log_params)
      render :show, status: :ok, location: @log }
    else
      render json: @log.errors, status: :unprocessable_entity }
    end
  end

  def destroy
    @log.destroy
  end

  private
    def set_log
      @log = Log.find(params[:id])
    end

    def log_params
      params.require(:log).permit(:done, :date_time, :habit_id)
    end
end

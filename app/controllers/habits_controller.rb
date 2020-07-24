class HabitsController < ApplicationController
  before_action :set_habit, only: [:show, :edit, :update, :destroy]

  def index
    @habits = Habit.all
    render json: @habits
  end

  def show
    render json: @habit
  end

  def new
    @habit = Habit.new
  end

  def edit
  end

  def create
    @habit = Habit.new(habit_params)
    if @habit.save
      render :show, status: :created, location: @habit
    else
      render json: @habit.errors, status: :unprocessable_entity
    end
  end

  def update
    if @habit.update(habit_params)
      render :show, status: :ok, location: @habit
    else
      render json: @habit.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @habit.destroy
  end

  private
    def set_habit
      @habit = Habit.find(params[:id])
    end

    def habit_params
      params.require(:habit).permit(:name, :user_id)
    end
end

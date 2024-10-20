class DataPointsController < ApplicationController
  def index
    @data_points = DataPoint.group_by_day(:recorded_at).sum(:value)
  end

  def new
    @data_point = DataPoint.new
  end

  def create
    @data_point = DataPoint.new(data_point_params)
    if @data_point.save
      redirect_to data_points_path, notice: 'データポイントが追加されました'
    else
      render :new
    end
  end

  private

  def data_point_params
    params.require(:data_point).permit(:value, :recorded_at)
  end
end

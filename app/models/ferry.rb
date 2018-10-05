class Ferry < ActiveRecord::Base

  def self.search(params)
    if params[:search] && !params[:time].blank?
      date = params[:time].to_date
      Ferry.where(time: date.beginning_of_day..date.end_of_day)
    else
      nil
    end
  end

end

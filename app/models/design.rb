class Design < ActiveRecord::Base

  VALUES_FOR_AREAS = [
    ['0-3000sqm', '1'],
    ['3000-6000sqm','2'],
    ['>6000sqm', '3']
  ]

  VALUES_FOR_COST = [
    ['0-2000INR','1'],
    ['2000-5000INR', '2'],
    ['>5000INR', '3']
  ]


  def self.suggest_pond search_params
    where("area = ? AND cost = ? AND pond = ?",
          search_params[:area],search_params[:cost],search_params[:pond]).first
  end
end

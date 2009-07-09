class HomeController < ApplicationController
  def index
    if params.has_key?(:search)
      goear_id = Ralent.download(params[:search][:song])
      send_file "#{ENV['PWD']}/public/#{goear_id}.mp3"
    end
  end
end

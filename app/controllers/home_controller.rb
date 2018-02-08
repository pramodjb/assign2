class HomeController < ApplicationController

  def new
    @shortened_url = $shortened_url.present? ? $shortened_url : nil
  end

  def create
    $shortened_url = nil
    @bitly = Bitly.new("rsunil", "R_7ba1fc89d6ce410a83cc3bafc8258173")
    $shortened_url = @bitly.shorten(params[:link][:entered_link]).short_url
    puts "****************************"
    puts "Generated Link ****** " + $shortened_url
    puts "****************************"
    redirect_to root_path
  end

end

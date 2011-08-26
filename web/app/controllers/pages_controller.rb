class PagesController < ApplicationController

  before_filter :slow_emulator

  def a
    render(:layout => false) if request.headers["X-PJAX"]
  end

  def b
    render(:layout => false) if request.headers["X-PJAX"]
  end


  private

  def slow_emulator
    sleep 2 if params[:slow]
  end
end

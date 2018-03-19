class JobschoicesController < ApplicationController
  def index
    @jobschoices = Jobschoice.all
  end
  def show
    @jobchoice = Jobschoice.find(params[:id])
  end
end

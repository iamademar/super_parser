class ParseController < ApplicationController
  def index
    Resque.enqueue(Parse)
    render :text => "You just got parsed! Super Parsed!"
  end
end

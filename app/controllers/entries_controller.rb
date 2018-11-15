class EntriesController < ApplicationController

  def show
    @entry = Entry.find(params[:id])
  end

  def create
    @e = Entry.new
    @e.email = params[:entry][:email]
    @e.block_id = params[:entry][:block_id]
    @e.save
  end


  def new
  end
end

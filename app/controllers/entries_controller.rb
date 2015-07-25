class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params["id"])
  end

  def create
    entry_params = params["entry"].permit("title", "contents")
  end

  def destroy
      @entry = Entry.find(params["id"]).destroy
  end   

  def edit
    # @entry = current_entry.profile(params[:id])
    @entry = Entry.find(params["id"])
  end

  def update
    entry_params = params["entry"].permit("title", "contents")
    entry = Entry.find(params["id"])
    entry.update(entry_params)
    redirect_to(entry_path(entry))
  end

end

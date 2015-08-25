class EntriesController < ApplicationController

    def index
        @entries = Entry.all
    end

    def show
        if !(params[:id].blank?)
            @entry = Entry.find(params[:id])
        else
            redirect_to(@entries) and return
        end
    end

    def create
        entry = Entry.create(entry_params)
        redirect_to(entry_path(entry))
    end

    def destroy 
        @removedEntry = @entry
        Entry.destroy(@removedEntry.id)
        redirect_to(entry_path) and return
    end

    def edit
        @entry
    end

    def update
        @entry.update(entry_params)
        redirect_to(entry_path(entry))
    end

    private
    # use call backs
    def set_entry
        @entry = Entry.find(params[:id])
    end

    # never trus the scary stuff from the internet
    def entry_params
        params[:entry].permit(:title, :contents)
    end

end

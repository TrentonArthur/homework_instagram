class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @index = params["id"]
    @chosenPhoto = Photo.find_by("id" => @index )

  end

  def new_form

  end

  def create_row
    @new_photo = Photo.new
    @new_photo.caption = params["the_caption"]
    @new_photo.source = params["the_source"]
    @new_photo.save

  end

  def destroy

    @index = params["id"]
    @destroyPhoto = Photo.find_by("id" => @index )
    @destroyPhoto.destroy

  end

  def edit_form
    @index = params["id"]
    @editPhoto = Photo.find_by("id" => @index )
  end

  def update_row
    @index = params["id"]
    @photoEdits = Photo.find_by("id" => @index )
    @photoEdits.caption = params["the_caption"]
    @photoEdits.source = params["the_source"]
    @photoEdits.save


  end

end

class PhotosController < ApplicationController
    
def index
        @photos = Photo.order('created_at')
end

def new
    @photo = Photo.new
end

    
 def create
    @photo = Photo.new(photo_params)
    if @photo.save
        flash[:notice] = "Added photo"
        redirect_to photos_path
    else
        flash[:alert] = "Error did not save photo"
        render :new
    end 
 end
 
 
def destroy
    @photo = Photo.find(params[:id])
    if @photo.destroy
        flash[:notice] = "deleted photo"
        redirect_to photos_path
    else
        flash[:alert] = "error deleting photo"
    end
end     

private
def photo_params
    params.require(:photo).permit(:title, :image)
end

end
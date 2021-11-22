class LibrariesController < ApplicationController
  before_action :set_library, only: [ :show, :edit, :update, :destroy ]

  # (C)
  def new
    render component: "LibraryNew"
  end

  def create
    @library = Library.new(library_params)
    if (@library.save)
      redirect_to libraries_path
    end
  end

  # (R)
  def index
    libraries = Library.all
    render component: "Libraries", props: { libraries: libraries }
  end

  def show
    render component: "Library", props: {library: @library}
  end

  # (U)
  def edit
    render component: "LibraryEdit", props: {library: @library}
  end

  def update
    if (@library.update(library_params))
      redirect_to libraries_path
    end
  end

  # (D)
  def destroy
    @library.destroy
    redirect_to libraries_path
  end

  private

  def set_library
    @library = Library.find(params[:id])
  end

  def library_params
    params.require(:library).permit(:name, :street_address, :city, :state)
  end

end

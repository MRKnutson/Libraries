class SectionsController < ApplicationController
  before_action :set_library
  before_action :set_section, only: [:show, :edit, :update, :destroy]

  # C
  def new
    render component: "SectionNew", props: {library: @library}
  end

  def create
    @section = @library.sections.new(set_params)
    if @section.save
      redirect_to [@library, @section]
    end
  end

  # R
  def index
    render component: "Sections", props: { library: @library, sections: @library.sections }
  end

  def show
    render component: "Section", props: {library: @library, section: @section}
  end

  # U
  def edit
    render component: "SectionEdit"
  end

  def update
  end

  # D
  def destroy
  end

  private

  def set_library
    @library = Library.find(params[:library_id])
  end

  def set_section
    @section = @library.sections.find(params[:id])
  end

  def set_params
    params.require(:section).permit(:genre)
  end

end

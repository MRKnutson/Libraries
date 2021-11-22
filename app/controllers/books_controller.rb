class BooksController < ApplicationController
before_action :set_section
before_action :set_library
before_action :set_book, only: [:show, :edit, :update, :destroy]
  # c

  def new
    render component: "BookNew", props: { library: @library, section: @section}
  end

  def create
    @book = @section.books.new(book_params)
    if(@book.save)
      redirect_to [@section, @book]
    end
  end

  # r

  def index
    render component: "Books", props: { library: @library, section: @section, books: @section.books }
  end

  def show
    render component: "Book", props: { library: @library, section: @section, book: @book }
  end

  # u

  def edit
    render component: "BookEdit", props: { library: @library, section: @section, book: @book }
  end

  def update
    if(@book.update(book_params))
      redirect_to [@section, @book]
    end
  end

  # d

  def destroy
    @book.delete
    redirect_to section_books_path(@section)
  end

  private

  def set_section
    @section = Section.find(params[:section_id])
  end

  def set_library
    @library = Library.find(@section.library_id)
  end

  def set_book
    @book = @section.books.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author)
  end

end

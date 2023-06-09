class BooksController < ApplicationController
  
  def new
  end
  
  def create
   @book = Book.new(book_params)
   @books = Book.all
   if @book.save
     flash[:success]="successfully created book！"
     redirect_to book_path(@book.id)
   else
    render :index
   end
  end
  
  
  def index
   @books = Book.all
   @book = Book.new
  end

  def show
   @book = Book.find(params[:id])
  end

  def edit
   @book = Book.find(params[:id])
  end
  
  def update
   @book = Book.find(params[:id])
   
   if @book.update(book_params)
    flash[:success]="successfully updated book！"
    redirect_to book_path(@book.id)
   else
    render :edit
   end
   
  end
  
  def destroy
   book = Book.find(params[:id])
   book.destroy
   flash[:success]="Book was successfully destroyed！"
   redirect_to '/books'
  end
  
  private
   def book_params
    params.require(:book).permit(:title,:body)
   end
 
end


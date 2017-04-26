class AudioBibleController < ApplicationController
  def index
    @books = Book.all
    
    @book = Book.new
    @chapter = Chapter.new
  end
end

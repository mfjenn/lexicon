class WordsController < ApplicationController
  def new
    @word = Word.new
  end
  
  def create
    @word = Word.new(params[:word])
    @word.user = current_user
    if @word.save
      redirect_to(@word, :notice => 'Definition was successfully created.')
    else
      render :action => "new"
    end
  end
  def show
    @word = Word.find(params[:id])
  end
  
  def edit
    @word = Word.find(params[:id])
  end
  
  def update
    @word = Word.find(params[:id])
    
    if @word.update_attributes(params[:word])
      redirect_to(@word, :notice => 'Definition was successfully updated.') 
    else
      render :action => "edit" 
    end
  end
 def index
    @words = Word.all
  end  
end

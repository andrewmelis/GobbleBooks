class FavoritesController < ApplicationController

  def destroy
    @favorite = Favorite.where(:user_id => params["user_id"], :book_id => params["book_id"])
    @favorite.destroy_all

    respond_to do |format|
      format.html { redirect_to user_url(session[:user_id]) }
      format.json { head :no_content }
    end
  end


  def create
    @favorite = Favorite.new(:user_id => params["user_id"], :book_id => params["book_id"])
    
    respond_to do |format|
      if @favorite.save
        format.html { redirect_to books_url, notice: 'Book was successfully created.' }
        format.json { render json: @favorite, status: :created, location: @favorite }
      else
        format.html { render action: "new" }
        format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  end


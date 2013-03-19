class CommentsController < ApplicationController

  # POST /comments
  # POST /comments.json
  def create
    @book = Book.find(params[:book_id]
    @comment = Comment.new(params[:comment])
    #@comment = Comment.new(:user_id => params["user_id"], :book_id => params["book_id"], :body => params["body"])
    
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.book, notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

    # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end
end

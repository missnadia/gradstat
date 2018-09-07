class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end

    def edit
        @course = Course.find(params[:course_id])
        @comment = @course.comments.find(params[:id])
    end
    
    def create
        @course = Course.find(params[:course_id])
        @comment = @course.comments.create(params[:comment].permit(:comment))
        redirect_to @course
    end
  
    def destroy
        @course = Course.find(params[:course_id])
        @comment = @course.comments.find(params[:id])
        @comment.destroy
        redirect_to @course
    end
  end
  
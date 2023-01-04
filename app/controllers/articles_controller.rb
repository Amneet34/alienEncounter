class ArticlesController < ApplicationController
     def index
        render json: Article.all
    end

    def show
        report = Article.find_by(id:params[:id])
        render json: report
    end

     def create_comment 
        post = Article.find_by!(id: params[:id])
        comment = Comment.create!(post_id: post.id, user_id: 1, content: params[:content])
        render json: {post: post, comment: comment}
     end

    def delete_comment
        comment = Comment.find_by!(id: params[:id]).destroy!
    end
     
end

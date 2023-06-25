class CommentsController < ApplicationController
    before_action :find_commentable, only: :create

        def new
            @comment = Comment.new
        end

        def create
            @commentable.comments.build(comment_params)
            
            if @commentable.save
                redirect_back(fallback_location: root_path)
            end

        end

        private

        def comment_params
            params.require(:comment).permit(:content).merge(user_id: current_user.id)
        end

        def find_commentable
            if params[:comment_id]
            @commentable = Comment.find_by_id(params[:comment_id]) 
            elsif params[:project_id]
            @commentable = Project.find_by_id(params[:project_id])
            end
        end
end

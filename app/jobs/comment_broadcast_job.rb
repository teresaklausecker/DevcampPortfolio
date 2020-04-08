class CommentBroadcastJob < ApplicationJob
    queue_as :default
    def perform(comment)
        Actioncable.server.broadcast "blog_#(comment.blog.id)_channel", comment: render_comment(comment)
    end    
    private

    def render_comment(comment)
        CommentsController.render partials: 'comments/comment', locals: { comment: comment }
    end
end
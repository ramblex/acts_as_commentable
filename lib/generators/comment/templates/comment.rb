class Comment < ActiveRecord::Base

  include ActsAsCommentable::Comment

  # NOTE: install acts_as_tree if you want to have threaded comments
  acts_as_tree

  belongs_to :commentable, :polymorphic => true

  default_scope :order => 'created_at ASC'

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable

  # NOTE: Comments belong to a user
  belongs_to :user
end

class PagesController < ApplicationController
  def home
    @tasks = policy_scope(Task).all
  end

  def index
  end
end

class TaskPolicy < ApplicationPolicy
  def update?
    user.registered?
  end

  def destroy
    user.registered?
  end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
end

class LifePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def edit?
    user == record.user
  end

  def destroy?
    user == record.user
  end

  def update?
    user == record.user
  end

end

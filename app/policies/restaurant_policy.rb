class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      ## only return restaurants by curreny user
      #scope.where(user: user)

      ## return all restaurants
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def edit?
    #record == @restaurant
    #user == current_user

    # return restaurant.user == current_user
    user_is_owner_or_admin?
  end

  def update?
    user_is_owner_or_admin?
  end

  def destroy?
    user_is_owner_or_admin?
  end

  private
    def user_is_owner_or_admin?
      record.user == user || user.admin
    end
end

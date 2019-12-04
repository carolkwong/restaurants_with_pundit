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
    record.user == user
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end


end

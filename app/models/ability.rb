class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Food, user: user
    can :read, Recipe, user: user
    can :manage, Recipe, user: user
    can :modify, User, id: user.id
  end
end

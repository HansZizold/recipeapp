class Ability
  include CanCan::Ability

  def initialize(user)
    can :read_recipe, Recipe, user:
  end
end

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all, user:
  end
end

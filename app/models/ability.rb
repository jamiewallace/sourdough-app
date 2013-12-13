class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role == 'admin'
      can :manage, :all
    
    elsif user.role == 'user'

      can :read, :all

      can :create, Image
      can :edit, Image do |image|
        image.user == user
      end
      can :update, Post do |image|
        image.user == user
      end
      can :destroy, Post do |image|
        image.user == user
      end

    else
      can :read, :all
      can :create, User

    end
  end
end

class Ability
  include CanCan::Ability

# users have 3 roles: guest visitor (not logged in), member(logged in), admin

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role? == 'admin'
        can :manage, :all
    elsif user.id?
        can :read, :all
        can [:new, :create, :show], Image
        can [:edit, :update, :destroy], Image do |image|
          image.user == user
        end
        can [:new, :create, :show], User
        can [:edit, :update, :destroy], User do |current_user|
          current_user.id == user.id
        end
        # Messages
        can [:inbox, :create, :conversation], Message
        can :destroy, Message do |message|
          (message.sender.id == current_user.id) || (message.recipient.id == current_user.id)
        end
    else
      can :read, :all
      can [:do_search, :new_search], User
    end
  end
end


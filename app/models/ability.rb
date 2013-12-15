class Ability
  include CanCan::Ability

# users have 3 roles: guest visitor (not logged in), member(logged in), admin

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    # if user.role? :admin
    #     can :manage, :all
    # else
    #     can :read, :all
    # end

    if user.id?
        can :read, :all
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


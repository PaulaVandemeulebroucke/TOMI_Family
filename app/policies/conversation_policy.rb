class ConversationPolicy < ApplicationPolicy
  def create?
    user.user_category == "student"
  end
end

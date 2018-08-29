class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def update
    super
  end

  def create
    super
    if resource.save && !params["other"]["sponsor"].nil? && !params["other"]["sponsor"].empty?
      user = User.find(params["other"]["user_first_names"])
      user.sponsoring_count += 1
      user.save
    end
  end

  def delete
    super
  end
end

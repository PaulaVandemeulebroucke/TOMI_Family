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
      user = User.find(params["other"]["sponsor_id"])
      user.sponsoring_count += 1
      user.save
    end
  end

  def delete
    super
  end
end

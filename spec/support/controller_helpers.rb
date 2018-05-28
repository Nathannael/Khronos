module ControllerHelpers
  def sign_in_user
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryBot.create(:user)
  end
end

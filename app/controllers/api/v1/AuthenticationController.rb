class Api::V1::AuthenticationController < ApiController
  def create
    user = User.find_by(email: params[:email])
    if user && user.valid_password?(params[:password])
      render json: { token: JsonWebToken.encode(sub: user.id) }
    else
      render json: { errors: [ "Invalid email or password" ] }, status: :unauthorized
    end
  end
end

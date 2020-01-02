class SesstionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: sesstion_params[:email])

    if user&.authenticate(sesstion_params[:password])
    #ボッチ演算子
      session[:user_id] = user.id
      redirect_to root_url, notice: 'login'
    else
      render :new
    end
  end

  def destroy
    reset_session #これでsessionの情報全部消えます。実質lgout
    redirect_to root_url, notice: 'logout'
  end

  private

  def sesstion_params
    params.require(:sesstion).permit(:email, :password)
  end

end

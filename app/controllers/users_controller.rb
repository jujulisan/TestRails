class UsersController < ApplicationController

	before_filter :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, notice: 'Usuário cadastrado com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update

    @user = User.find(params[:id])
    if @user.update_attributes(parametros)
      redirect_to users_path, notice: 'Usuário atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice: 'Usuário apagado com sucesso.'
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :zip_code, :street, :neighborhood,
    	                           :city, :state)
  end
end

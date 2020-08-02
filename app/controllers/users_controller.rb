class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @informations = Information.all
  end

  # GET /users/1
  # GET /users/1.json
  # def show
  # end

  # GET /users/new
  def new;end

  # GET /users/1/edit
  # def edit
  # end

  # POST /users
  # POST /users.json
  def create
    # コードを記述する
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  # def update
  # end

  # DELETE /users/1
  # DELETE /users/1.json
  # def destroy
  #   コードを記述する
  #   redirect_to users_url, notice: 'User was successfully destroyed.'
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end
end

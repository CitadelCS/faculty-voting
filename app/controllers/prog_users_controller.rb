class ProgUsersController < ApplicationController
  before_action :set_prog_user, only: [:show, :edit, :update, :destroy]

  # GET /prog_users
  # GET /prog_users.json
  def index
    @prog_users = ProgUser.all
  end

  # GET /prog_users/1
  # GET /prog_users/1.json
  def show
  end

  # GET /prog_users/new
  def new
    @roles = Role.all
    @users = User.all
    @prog_user = ProgUser.new
  end

  # GET /prog_users/1/edit
  def edit
    @roles = Role.all
    @users = User.all
  end

  # POST /prog_users
  # POST /prog_users.json
  def create
    @prog_user = ProgUser.new(prog_user_params)
    @roles = Role.all
    @users = User.all

    respond_to do |format|
      if @prog_user.save
        format.html { redirect_to @prog_user, notice: 'Prog user was successfully created.' }
        format.json { render :show, status: :created, location: @prog_user }
      else
        format.html { render :new }
        format.json { render json: @prog_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prog_users/1
  # PATCH/PUT /prog_users/1.json
  def update
    respond_to do |format|
      if @prog_user.update(prog_user_params)
        format.html { redirect_to @prog_user, notice: 'Prog user was successfully updated.' }
        format.json { render :show, status: :ok, location: @prog_user }
      else
        format.html { render :edit }
        format.json { render json: @prog_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prog_users/1
  # DELETE /prog_users/1.json
  def destroy
    @prog_user.destroy
    respond_to do |format|
      format.html { redirect_to prog_users_url, notice: 'Prog user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prog_user
      @prog_user = ProgUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prog_user_params
      params.require(:prog_user).permit(:user_id, :role_id)
    end
end

class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit]
  def index
    # if params[:field] == "title"
    #   @blogs = Blog.pluck(:title)
    # elsif params[:field] == "price"
    #   @blogs = Blog.pluck(:id,:price)
    # end

    # @static_data = "This is Test"

    p ":::::: Users List ::::::"
    # @users = User.all
  end

  def show
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user),notice:"User Created Successfully"}
        format.json { render :show, status: :created, location: @user }
      else
        format.html { redirect_to :new, status: :unprocessable_entity}
        format.json { render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      patams.require(:user).permit(:name,:surname)
    end
end
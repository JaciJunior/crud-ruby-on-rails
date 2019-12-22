class Api::V1::UsersController < Api::V1::ApiController

 # GET /api/v1/user

 def index

   @users = User.all

   render json:['status'=>'ok','data'=>@users]

 end

 # GET /api/v1/user/1

 def show
    @user = User.find(params[:id])
   render json: @user

 end

 # POST /api/v1/user

 def create

    user_save = User.new
    user_save.email = params[:email]
    user_save.password = params[:password]


#
   if user_save.save

     render json: user_save, status: :created

   else

     render json: user_save.errors, status: :unprocessable_entity

   end

 end

 # PATCH/PUT /api/v1/user/1

 def update

    user_update = User.find(params[:id])


   if user_update.update(email: params[:email], password: params[:password])

     render json: user_update

   else

     render json: user_update.errors, status: :unprocessable_entity

   end

 end

 # DELETE /api/v1/user/1

 def destroy
        user_delete = User.find(params[:id])
        user_delete.destroy

 end

 private


   def require_authorization!

     unless current_user == @user.user

       render json: {}, status: :forbidden

     end

   end


end

class UsersController < ApplicationController
  # before_action :set_user, only: %i[ show edit update destroy ]

  # BASE_URL = 'https://canvas.instructure.com/api/v1/courses/'
  # ACCESS_TOKEN = '7~Yb6tXYHm8k14eReNze0aY4mjZLDrr16GBPTRUuMe03rU7HbmTGSVETGcYhxKc13i'

  # # GET /users or /users.json
  # def index
  #   @users = User.all
  # end

  # def index
  #   response = RestClient.get("#{BASE_URL}?access_token=#{ACCESS_TOKEN}")
  #   @courses = JSON.parse(response.body)
  # end

  # def show
  #   # Petición GET para obtener detalles de un curso específico (reemplaza {course_id} con el ID del curso)
  #   course_id = params[:id]
  #   response = RestClient.get("#{BASE_URL}/#{course_id}?access_token=#{ACCESS_TOKEN}")
  #   @course = JSON.parse(response.body)
  # end

  # # GET /users/1 or /users/1.json
  # def show
  # end

  # # GET /users/new
  # def new
  #   @user = User.new
  # end

  # # GET /users/1/edit
  # def edit
  # end

  # # POST /users or /users.json
  # def create
  #   @user = User.new(user_params)

  #   respond_to do |format|
  #     if @user.save
  #       format.html { redirect_to user_url(@user), notice: "Estudiante fue añadido con éxito." }
  #       format.json { render :show, status: :created, location: @user }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def create
  #   # Petición POST para crear un nuevo curso (reemplaza course_params con tus datos)
  #   response = RestClient.post("#{BASE_URL}?access_token=#{ACCESS_TOKEN}", course_params)
  #   @course = JSON.parse(response.body)
  # end

  # # PATCH/PUT /users/1 or /users/1.json
  # def update
  #   respond_to do |format|
  #     if @user.update(user_params)
  #       format.html { redirect_to user_url(@user), notice: "La información fue editada con éxito." }
  #       format.json { render :show, status: :ok, location: @user }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def update
  #   # Petición PUT/PATCH para actualizar un curso existente (reemplaza {course_id} y course_params)
  #   course_id = params[:id]
  #   response = RestClient.put("#{BASE_URL}/#{course_id}?access_token=#{ACCESS_TOKEN}", course_params)
  #   @course = JSON.parse(response.body)
  # end


  # # DELETE /users/1 or /users/1.json
  # def destroy
  #   @user.destroy!

  #   respond_to do |format|
  #     format.html { redirect_to users_url, notice: "Estudiante fue eliminado con éxito." }
  #     format.json { head :no_content }
  #   end
  # end

  # def destroy
  #   # Petición DELETE para eliminar un curso existente (reemplaza {course_id})
  #   course_id = params[:id]
  #   response = RestClient.delete("#{BASE_URL}/#{course_id}?access_token=#{ACCESS_TOKEN}")
  #   # Maneja la respuesta según tus necesidades
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_user
  #     @user = User.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def user_params
  #     params.require(:user).permit(:user_id, :nombre, :apellido, :apodo, :correo, :zona_horaria, :descripcion)
  #   end
end

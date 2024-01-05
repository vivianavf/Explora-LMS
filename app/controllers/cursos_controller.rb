class CursosController < ApplicationController
    #Mostrar en el inicio
    # def index
    #     # @curso = Curso.all
    #     # p @curso.length #print
    #     # @courses = CanvasService.fetch_courses
    # end

    BASE_URL = 'https://canvas.instructure.com/api/v1/courses'
  ACCESS_TOKEN = '7~Yb6tXYHm8k14eReNze0aY4mjZLDrr16GBPTRUuMe03rU7HbmTGSVETGcYhxKc13i'

  def index
    # Petición GET para obtener la lista de cursos
    response = RestClient.get("#{BASE_URL}?access_token=#{ACCESS_TOKEN}")
    @courses = JSON.parse(response.body)
  end

  def show
    # Petición GET para obtener detalles de un curso específico (reemplaza {course_id} con el ID del curso)
    course_id = params[:id]
    response = RestClient.get("#{BASE_URL}/#{course_id}?access_token=#{ACCESS_TOKEN}")
    @course = JSON.parse(response.body)
  end

  def create
    # Petición POST para crear un nuevo curso (reemplaza course_params con tus datos)
    response = RestClient.post("#{BASE_URL}?access_token=#{ACCESS_TOKEN}", course_params)
    @course = JSON.parse(response.body)
  end

  def update
    # Petición PUT/PATCH para actualizar un curso existente (reemplaza {course_id} y course_params)
    course_id = params[:id]
    response = RestClient.put("#{BASE_URL}/#{course_id}?access_token=#{ACCESS_TOKEN}", course_params)
    @course = JSON.parse(response.body)
  end

  def destroy
    # Petición DELETE para eliminar un curso existente (reemplaza {course_id})
    course_id = params[:id]
    response = RestClient.delete("#{BASE_URL}/#{course_id}?access_token=#{ACCESS_TOKEN}")
    # Maneja la respuesta según tus necesidades
  end

  private

  def course_params
    # Define los parámetros necesarios para crear o actualizar un curso
    params.require(:course).permit(:name, :description, :other_attributes).to_json
  end

    # #llamar al formulario
    # def new
    #     @curso = Curso.new

    # end

    # #crear instancia
    # def create
    #     @curso = Curso.new(curso_params)
    #     if @curso.save
    #         redirect_to cursos_path
    #     else
    #         redirect_to new_curso_path
    #     end
    # end

    # def edit
    #     @curso = Curso.find(params[:id])
    # end

    # def update
    #     @curso = Curso.find(params[:id])

    #     if @curso.update(curso_params)
    #         redirect_to cursos_path
    #     else
    #         render :edit
    #     end
    # end

    # def destroy
    #     @curso = Curso.find(params[:id])
    #     @curso.destroy
    #     redirect_to cursos_path
    # end

    # private
    # def curso_params
    #     params.require(:curso).permit(:id_curso, :uuid, :nombre, :codigo, :nestudiantes)
    # end

    
end

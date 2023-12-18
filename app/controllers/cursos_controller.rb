class CursosController < ApplicationController
    #Mostrar en el inicio
    def index
        @curso = Curso.all
        p @curso.length #print
    end

    #llamar al formulario
    def new
        @curso = Curso.new

    end

    #crear instancia
    def create
        @curso = Curso.new(curso_params)
        if @curso.save
            redirect_to cursos_path
        else
            redirect_to new_curso_path
        end
    end

    def edit
        @curso = Curso.find(params[:id])
    end

    def update
        @curso = Curso.find(params[:id])

        if @curso.update(curso_params)
            redirect_to cursos_path
        else
            render :edit
        end
    end

    def destroy
        @curso = Curso.find(params[:id])
        @curso.destroy
        redirect_to cursos_path
    end

    private
    def curso_params
        params.require(:curso).permit(:id_curso, :uuid, :nombre, :codigo, :nestudiantes)
    end

    
end

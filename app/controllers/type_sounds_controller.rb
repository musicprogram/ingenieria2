class TypeSoundsController < ApplicationController
  before_action :set_type_sound, only: [:show, :edit, :update, :destroy]

  # GET /type_sounds
  # GET /type_sounds.json
  def index
    @type_sounds = TypeSound.all
  end

  # GET /type_sounds/1
  # GET /type_sounds/1.json
  def show
  end

  # GET /type_sounds/new
  def new
    @type_sound = TypeSound.new
  end

  # GET /type_sounds/1/edit
  def edit
  end

  # POST /type_sounds
  # POST /type_sounds.json
  def create
    @type_sound = TypeSound.new(type_sound_params)

    respond_to do |format|
      if @type_sound.save
        format.html { redirect_to type_sounds_url, notice: 'tipo de sonido a sido creado.' }
        format.json { render :show, status: :created, location: @type_sound }
      else
        format.html { render :new }
        format.json { render json: @type_sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_sounds/1
  # PATCH/PUT /type_sounds/1.json
  def update
    respond_to do |format|
      if @type_sound.update(type_sound_params)
        format.html { redirect_to type_sounds_url, notice: 'tipo de sonido a sido actualizado.' }
        format.json { render :show, status: :ok, location: @type_sound }
      else
        format.html { render :edit }
        format.json { render json: @type_sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_sounds/1
  # DELETE /type_sounds/1.json
  def destroy
    @type_sound.destroy
    respond_to do |format|
      format.html { redirect_to type_sounds_url, notice: 'tipo de sonido a sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_sound
      @type_sound = TypeSound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_sound_params
      params.require(:type_sound).permit(:nombre)
    end
end

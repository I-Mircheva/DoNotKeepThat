class HiddenNotesController < ApplicationController
  before_action :set_hidden_note, only: [:show, :destroy]

  # GET /hidden_notes
  # GET /hidden_notes.json
  def index
    @hidden_notes = HiddenNote.all
  end

  # GET /hidden_notes/1
  # GET /hidden_notes/1.json
  def show
     @hidden_note.destroy
    respond_to do |format|
      format.html { render :show, notice: 'This Hidden note is now successfully destroyed.'}
      format.json { head :no_content }
    end
  end
  # i made dis
  def show_url
  end

  # GET /hidden_notes/new
  def new
    @hidden_note = HiddenNote.new
  end

  # POST /hidden_notes
  # POST /hidden_notes.json
  def create
    @hidden_note = HiddenNote.new(hidden_note_params)

    respond_to do |format|
      if @hidden_note.save
        format.html { render :show_url, notice: 'Hidden note was successfully created.'}
        format.json { render :show_url, status: :created, location: @hidden_note }
      else
        format.html { render :new }
        format.json { render json: @hidden_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hidden_notes/1
  # DELETE /hidden_notes/1.json
  def destroy
    @hidden_note.destroy
    respond_to do |format|
      format.html { redirect_to hidden_notes_url, notice: 'Hidden note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hidden_note
      @hidden_note = HiddenNote.find_by(id: params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hidden_note_params
      params.require(:hidden_note).permit(:your_note)
    end
end

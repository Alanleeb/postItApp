class NotesController < ApplicationController
  def index
    @notes = Note.new
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end
end

def create
  @note = Note.new(notes_params)

  if @note.save
    redirect_to notes_path
  else
    render :new
  end
end

private

  def notes_params
    params.require(:note).permit(:author, :subject, :note)
  end

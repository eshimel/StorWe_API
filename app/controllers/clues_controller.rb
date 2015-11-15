#Users receive clues from the previous user.
  #Users submit clues for the next user.

class CluesController < ProtectedController
  before_action :set_clue, only: [:update,  :destroy]

  # GET clue
  def index
    if(current_user)
      @clues = current_user.clues
    else
      @clues = Clue.all
    end
    render json: @clues
  end

  # GET clue/1
  def show
     clue = clue.find(params[:id])

    #def show    # i.e. read *one* sale
  #render json: Clue.find(params[:id])
end

  # POST clue
  def create
  clue = Clue.create(clue_params)
  if clue.save
    render json: clue # Send back the newly created Sale, as a JSON.
  else
    render json: clue.errors, status: :unprocessable_entity # Send back errors.
  end
end

  # PATCH clue/1
  def update
    if @clue.update(clue_params)
      head :no_content
    else
      render json: clue.errors, status: :unprocessable_entity
    end
  end

  # DELETE clue/1
  def destroy
    clue.destroy

    head :no_content
  end

  private
  def set_clue
    @clue = current_user.clue.find(params[:id])
  end

  def clue_params
    params.require(:clue).permit(:clue, :user_id, :outline_id)
  end


end


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
    # clue = clue.find(params[:id])

    render json: current_user.clue
  end

  # POST clue
  def create
    clue = current_user.create_clue(clue_params) #makes this, this user' clue.

    if clue.save
      render json: clue, status: :created, location: clue
    else
      render json: clue.errors, status: :unprocessable_entity
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
    @clue = current_user.clue#.find(params[:id])
  end

  def clue_params
    params.require(:clue).permit(:user, :outline)
  end


end


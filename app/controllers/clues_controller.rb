#Users receive clues from the previous user.
  #Users submit clues for the next user.

class CluesController < UsersController
  before_action :set clue, only: [:update, :destroy]

  # GET clue
  def index
    clue = Clue.all

    render json: clue
  end

  # GET clue/1
  def show
    clue = clue.find(params[:id])

    render json: clue
  end

  # POST clue
  def create
    clue = current_user clue.new. clue_params) #makes this, this user' clue.

    if clue.save
      render json: clue, status: :created, location: clue
    else
      render json: clue.errors, status: :unprocessable_entity
    end
  end

  # PATCH clue/1
  def update
    if  clue.update clue_params)
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

  def set clue
    clue = current_user clue.find(params[:id])
  end

  def clue_params
    params.require(:theme).permit(:setting, :subject)
  end

  private :set clue,  clue_params
end

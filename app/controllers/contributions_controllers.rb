#users make a contribution and submit it
  #this reveals the current updates on the current story
  #stories are made up of ten contributions
class ContributionController < UserController

  before_action :use contribution, only: [:update, :destroy]

  # GET contribution
  def index
    contribution = Contribution.all

    render json: contribution
  end

  # GET contribution/1
  def show
    contribution = contribution.find(params[:id])

    render json: contribution
  end

  # POST contribution
  def create
    contribution = current_user contribution.new. contribution_params) #makes this, this user' contribution.

    if contribution.save
      render json: contribution, status: :created, location: contribution
    else
      render json: contribution.errors, status: :unprocessable_entity
    end
  end

  # PATCH contribution/1
  def update
    if  contribution.update (contribution_params)
      head :no_content
    else
      render json: contribution.errors, status: :unprocessable_entity
    end
  end

  # DELETE contribution/1
  def destroy
    contribution.destroy

    head :no_content
  end

  def set_contribution
    contribution = current_user contribution.find(params[:id])
  end

  def contribution_params
    params.require(:contribution).permit(:submission, :outline_id, :user_id)
  end

  private :set contribution,  contribution_params
end

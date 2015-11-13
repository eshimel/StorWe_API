class ContributionsController < ProtectedController
  skip_before_action :set_contribution, only: [:update, :destroy]

  # GET /contributions
  def index
    @contributions = Contribution.all

    render json: @contributions
  end

  # GET /contributions/1
  def show
    @contribution = Contribution.find(params[:id])

    render json: @contribution
  end

  # POST /contributions
 # def create
   # @contribution = current_user.create.contribution(contribution_params) #makes this, this user's contribution.
def create
    contribution = Contribution.new(submission: current_user)
    save game, :created
  end
   # if @contribution.save
    #  render json: @contribution, status: :created
    #else
    #  render json: @contribution.errors, status: :unprocessable_entity
    #end
  #end

  # PATCH /contributions/1
  def update
    if @contribution.update(contribution_params)
      head :no_content
    else
      render json: @contribution.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contributions/1
  def destroy
    @contribution.destroy

    head :no_content
  end

private

  def set_contribution
    @contribution = current_user.contributions.find(params[:id])
  end

  def contribution_params
    params.require(:contribution).permit(:submission, :user_id, :outline_id)
  end
end

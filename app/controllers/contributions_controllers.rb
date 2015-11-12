# before_action :set_contribution, only: [:update, :destroy]

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
  def create
    @contribution = current_user.contrbution.new(contribution_params) #makes this, this user's contribution.

    if @contribution.save
      render json: @contribution, status: :created, location: @contribution
    else
      render json: @contribution.errors, status: :unprocessable_entity
    end
  end

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

  def set_contribution
    @contribution = current_user.contributions.find(params[:id])
  end

  def contribution_params
    params.require(:contribution).permit(:submission)
  end

  private :set_contribution, :contribution_params
end

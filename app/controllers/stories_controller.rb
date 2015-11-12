# the previous story is set on the login/registration page
# stories are compiled every ten contributions
# the story in progress is visible after a contribution is submitted
class StoriesController < ContributionsController
  before_action :set_story, only: [:show, :update, :destroy]

  # GET /storys
  def index
    @stories = Story.all

    render json: @stories
  end

  # GET /storys/1
  def show

    @story = Story.find(params[:id])

    render json: @story
  end

  # POST /storys
  def create
    @story = current_outline.stories.new(story_params) #makes this, this user's story.

    if @stories.save
      render json: @story, status: :created, location: @story
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end

  # PATCH /storys/1
  def update
    if @story.update(story_params)
      head :no_content
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end

  # DELETE /storys/1
  def destroy
    @story.destroy

    head :no_content
  end

  def set_story
    @story = current_outline.stories.find(params[:id])
  end

  def story_params
    params.require(:contribution).permit(:clue, :outline)
  end

  private :set_story, :story_params
end

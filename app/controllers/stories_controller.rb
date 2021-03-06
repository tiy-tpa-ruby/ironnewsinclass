class StoriesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  # GET /stories
  def index
    @stories = Story.all.order("created_at DESC")
  end

  # GET /stories/1
  def show

    # if admin
    #  do *a*
    # else
    #  do *b-e*
    redirect_to stories_path
    @story = Story.find(params[:id])
  end

  # GET /stories/new
  def new
    @story = Story.new
  end

  # GET /stories/1/edit
  def edit
    @story = Story.find(params[:id])
  end

  # POST /stories
  def create
    @story = Story.new(story_params)
    @story.user = current_user

    if @story.save
      redirect_to stories_path, notice: 'Story was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /stories/1
  def update
    @story = Story.find(params[:id])
    if @story.update(story_params)
      redirect_to @story, notice: 'Story was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /stories/1
  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to stories_url, notice: 'Story was successfully destroyed.'
  end

  # upvote
  def upvote
    @story = Story.find(params[:id])
    if @story.not_already_voted?(current_user)
      @story.votes.create(upvote: true, user: current_user)
      redirect_to stories_path
    else
      redirect_to stories_path, notice: "sorry, you've already up voted for the story"
    end

  end

  def downvote
    @story = Story.find(params[:id])
    if @story.not_already_voted?(current_user)
      @story.votes.create(upvote: false, user: current_user)
      redirect_to stories_path
    else
      redirect_to stories_path, notice: "sorry, you've already down voted for the story"
    end

  end

  private
  # Only allow a trusted parameter "white list" through.
  def story_params
    params.require(:story).permit(:title, :link, :email, :cover_image)
  end
end

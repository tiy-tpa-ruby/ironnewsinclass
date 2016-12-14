class StoriesController < ApplicationController
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

<<<<<<< HEAD
  # Upvote
  def upvote
    @story = Story.find(params[:id])
    @story.votes.create(upvote: true)
    redirect_to stories_path
  end
  # Downvote
  def downvote
    @story = Story.find(params[:id])
    @story.votes.create(upvote: false)
    redirect_to stories_path
  end
=======
  # upvote
  def upvote
    @story = Story.find(params[:id])
    @story.votes.create(upvote: true)

    redirect_to stories_path
  end

  def downvote
    @story = Story.find(params[:id])
    @story.votes.create(upvote: false)

    redirect_to stories_path
  end

>>>>>>> c7e954c672584b52b7da190421339e622d8e7d9d
  private
  # Only allow a trusted parameter "white list" through.
  def story_params
    params.require(:story).permit(:title, :link, :email)
  end
end

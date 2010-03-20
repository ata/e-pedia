class DiscussionPostsController < ApplicationController
  # GET /discussion_posts
  # GET /discussion_posts.xml
  def index
    @discussion_posts = DiscussionPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @discussion_posts }
    end
  end

  # GET /discussion_posts/1
  # GET /discussion_posts/1.xml
  def show
    @discussion_post = DiscussionPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @discussion_post }
    end
  end

  # GET /discussion_posts/new
  # GET /discussion_posts/new.xml
  def new
    @discussion_post = DiscussionPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @discussion_post }
    end
  end

  # GET /discussion_posts/1/edit
  def edit
    @discussion_post = DiscussionPost.find(params[:id])
  end

  # POST /discussion_posts
  # POST /discussion_posts.xml
  def create
    @discussion_post = DiscussionPost.new(params[:discussion_post])

    respond_to do |format|
      if @discussion_post.save
        flash[:notice] = 'DiscussionPost was successfully created.'
        format.html { redirect_to(@discussion_post) }
        format.xml  { render :xml => @discussion_post, :status => :created, :location => @discussion_post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @discussion_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /discussion_posts/1
  # PUT /discussion_posts/1.xml
  def update
    @discussion_post = DiscussionPost.find(params[:id])

    respond_to do |format|
      if @discussion_post.update_attributes(params[:discussion_post])
        flash[:notice] = 'DiscussionPost was successfully updated.'
        format.html { redirect_to(@discussion_post) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @discussion_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /discussion_posts/1
  # DELETE /discussion_posts/1.xml
  def destroy
    @discussion_post = DiscussionPost.find(params[:id])
    @discussion_post.destroy

    respond_to do |format|
      format.html { redirect_to(discussion_posts_url) }
      format.xml  { head :ok }
    end
  end
end

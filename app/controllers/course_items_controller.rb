class CourseItemsController < ApplicationController
  # GET /course_items
  # GET /course_items.xml
  def index
    @course_items = CourseItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @course_items }
    end
  end

  # GET /course_items/1
  # GET /course_items/1.xml
  def show
    @course_item = CourseItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course_item }
    end
  end

  # GET /course_items/new
  # GET /course_items/new.xml
  def new
    @course_item = CourseItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @course_item }
    end
  end

  # GET /course_items/1/edit
  def edit
    @course_item = CourseItem.find(params[:id])
  end

  # POST /course_items
  # POST /course_items.xml
  def create
    @course_item = CourseItem.new(params[:course_item])

    respond_to do |format|
      if @course_item.save
        flash[:notice] = 'CourseItem was successfully created.'
        format.html { redirect_to(@course_item) }
        format.xml  { render :xml => @course_item, :status => :created, :location => @course_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @course_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /course_items/1
  # PUT /course_items/1.xml
  def update
    @course_item = CourseItem.find(params[:id])

    respond_to do |format|
      if @course_item.update_attributes(params[:course_item])
        flash[:notice] = 'CourseItem was successfully updated.'
        format.html { redirect_to(@course_item) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @course_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /course_items/1
  # DELETE /course_items/1.xml
  def destroy
    @course_item = CourseItem.find(params[:id])
    @course_item.destroy

    respond_to do |format|
      format.html { redirect_to(course_items_url) }
      format.xml  { head :ok }
    end
  end
end

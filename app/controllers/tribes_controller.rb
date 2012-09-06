class TribesController < ApplicationController
  # GET /tribes
  # GET /tribes.json
  def index
    @tribes = Tribe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tribes }
    end
  end

  # GET /tribes/1
  # GET /tribes/1.json
  def show
    @tribe = Tribe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tribe }
    end
  end

  # GET /tribes/new
  # GET /tribes/new.json
  def new
    @tribe = Tribe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tribe }
    end
  end

  # GET /tribes/1/edit
  def edit
    @tribe = Tribe.find(params[:id])
  end

  # POST /tribes
  # POST /tribes.json
  def create
    @tribe = Tribe.new(params[:tribe])

    respond_to do |format|
      if @tribe.save
        format.html { redirect_to @tribe, notice: 'Tribe was successfully created.' }
        format.json { render json: @tribe, status: :created, location: @tribe }
      else
        format.html { render action: "new" }
        format.json { render json: @tribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tribes/1
  # PUT /tribes/1.json
  def update
    @tribe = Tribe.find(params[:id])

    respond_to do |format|
      if @tribe.update_attributes(params[:tribe])
        format.html { redirect_to @tribe, notice: 'Tribe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tribes/1
  # DELETE /tribes/1.json
  def destroy
    @tribe = Tribe.find(params[:id])
    @tribe.destroy

    respond_to do |format|
      format.html { redirect_to tribes_url }
      format.json { head :no_content }
    end
  end
end

class HeadlinesController < ApplicationController
  # GET /headlines
  # GET /headlines.json
  def index
    @headlines = Headline.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @headlines }
    end
  end

  # GET /headlines/1
  # GET /headlines/1.json
  def show
    @headline = Headline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @headline }
    end
  end

  # GET /headlines/new
  # GET /headlines/new.json
  def new
    @headline = Headline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @headline }
    end
  end

  # GET /headlines/1/edit
  def edit
    @headline = Headline.find(params[:id])
  end

  # POST /headlines
  # POST /headlines.json
  def create
    @headline = Headline.new(params[:headline])

    respond_to do |format|
      if @headline.save
        format.html { redirect_to @headline, notice: 'Headline was successfully created.' }
        format.json { render json: @headline, status: :created, location: @headline }
      else
        format.html { render action: "new" }
        format.json { render json: @headline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /headlines/1
  # PUT /headlines/1.json
  def update
    @headline = Headline.find(params[:id])

    respond_to do |format|
      if @headline.update_attributes(params[:headline])
        format.html { redirect_to @headline, notice: 'Headline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @headline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headlines/1
  # DELETE /headlines/1.json
  def destroy
    @headline = Headline.find(params[:id])
    @headline.destroy

    respond_to do |format|
      format.html { redirect_to headlines_url }
      format.json { head :no_content }
    end
  end
end

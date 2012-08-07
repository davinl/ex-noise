class FormatsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    @formats = Format.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @formats }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @format = Format.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @format }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @format = Format.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @format }
    end
  end

  # GET /products/1/edit
  def edit
    @format = Format.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @format = Format.new(params[:format])

    respond_to do |format|
      if @product_format.save
        format.html { redirect_to @format, notice: 'Format was successfully created.' }
        format.json { render json: @format, status: :created, location: @format }
      else
        format.html { render action: "new" }
        format.json { render json: @product_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @format = Format.find(params[:id])

    respond_to do |format|
      if @format.update_attributes(params[:format])
        format.html { redirect_to @format, notice: 'Product was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @format = Format.find(params[:id])
    @format.destroy

    respond_to do |format|
      format.html { redirect_to formats_url }
      format.json { head :ok }
    end
  end
end

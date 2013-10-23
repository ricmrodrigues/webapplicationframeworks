class PrimesController < ApplicationController

  def isprime
    @input1 = params[:search_string]
    @result = Checkprime.runcheck(@input1.to_i)
  end

  # GET /primes
  # GET /primes.json
  def index
    @primes = Prime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @primes }
    end
  end

  # GET /primes/1
  # GET /primes/1.json
  def show
    @prime = Prime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prime }
    end
  end

  # GET /primes/new
  # GET /primes/new.json
  def new
    @prime = Prime.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prime }
    end
  end

  # GET /primes/1/edit
  def edit
    @prime = Prime.find(params[:id])
  end

  # POST /primes
  # POST /primes.json
  def create
    @prime = Prime.new(params[:prime])

    respond_to do |format|
      if @prime.save
        format.html { redirect_to @prime, notice: 'Prime was successfully created.' }
        format.json { render json: @prime, status: :created, location: @prime }
      else
        format.html { render action: "new" }
        format.json { render json: @prime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /primes/1
  # PUT /primes/1.json
  def update
    @prime = Prime.find(params[:id])

    respond_to do |format|
      if @prime.update_attributes(params[:prime])
        format.html { redirect_to @prime, notice: 'Prime was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primes/1
  # DELETE /primes/1.json
  def destroy
    @prime = Prime.find(params[:id])
    @prime.destroy

    respond_to do |format|
      format.html { redirect_to primes_url }
      format.json { head :no_content }
    end
  end
end

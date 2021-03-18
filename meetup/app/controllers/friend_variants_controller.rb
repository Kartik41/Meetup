class FriendVariantsController < ApplicationController
  before_action :set_friend_variant, only: %i[ show edit update destroy ]

  # GET /friend_variants or /friend_variants.json
  def index
    @friend_variants = FriendVariant.all
  end

  # GET /friend_variants/1 or /friend_variants/1.json
  def show
  end

  # GET /friend_variants/new
  def new
    @friend_variant = FriendVariant.new
  end

  # GET /friend_variants/1/edit
  def edit
  end

  # POST /friend_variants or /friend_variants.json
  def create
    @friend_variant = FriendVariant.new(friend_variant_params)

    respond_to do |format|
      if @friend_variant.save
        format.html { redirect_to @friend_variant, notice: "Friend variant was successfully created." }
        format.json { render :show, status: :created, location: @friend_variant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friend_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friend_variants/1 or /friend_variants/1.json
  def update
    respond_to do |format|
      if @friend_variant.update(friend_variant_params)
        format.html { redirect_to @friend_variant, notice: "Friend variant was successfully updated." }
        format.json { render :show, status: :ok, location: @friend_variant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friend_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friend_variants/1 or /friend_variants/1.json
  def destroy
    @friend_variant.destroy
    respond_to do |format|
      format.html { redirect_to friend_variants_url, notice: "Friend variant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend_variant
      @friend_variant = FriendVariant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friend_variant_params
      params.require(:friend_variant).permit(:phone2, :friends_id)
    end
end

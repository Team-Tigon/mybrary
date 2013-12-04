class ItemsController < ApplicationController
  before_action :set_user, only: [:index, :show, :new, :edit, :update, :destroy]
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.where(:user_id => params[:user_id])
  end

  def show
  end

  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
    @item = @user.items.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @item.user_id = params[:user_id]
#how do u require the user_id in the item_params (look into it later)
    respond_to do |format|
      if @item.save
        format.html { redirect_to user_path(@item.user_id), notice: 'item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @item }
      else
        format.html { render action: 'new' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    @item = @user.items.find(params[:id])

    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to [@user, @item], notice: 'item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end


  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = @user.items.find(params[:id])
    @item.destroy


    respond_to do |format|
      format.html { redirect_to user_items_path(@user) }
      format.json { head :no_content }
    end
  end

  def search_results
    @name_matches = current_user.available_to_borrow(params[:search_string])
    @tag_matches = Item.tagged_with([:search_string], :on => :tags, :any => true)
    render action: 'index'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    def set_user
      @user = User.find_by(id: params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :tag_list, :type_list, :description)
    end
end

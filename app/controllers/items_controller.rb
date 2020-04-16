class ItemsController < ApplicationController
    before_action :authenticate_user!
    before_action :require_permission, only: [:edit, :update, :destroy]


    def index
        items = current_user.items
        respond_to do |format|
            format.html { render:index, locals: { items:items} }
        end
    end

    def new
        item = Item.new
        respond_to do |format|
            format.html {  render:new, locals: {item:item}}
        end
    end

    def create
        item = current_user.items.build(params.require(:item).permit(:name, :description, :category, :price))
        respond_to do |format|
            format.html do
                if item.save
                    flash[:success] = "Item saved successfully"
                    redirect_to items_url
                else
                    flash.now[:error] = "Error: Item could not be saved"
                    render :new, locals: { item: item }
                end
            end
        end

    end

    def edit
        item = Item.find(params[:id])
        respond_to do |format|
            format.html { render :edit, locals: { item: item } }
        end
    end

    def update
        item = Item.find(params[:id])
        respond_to do |format|
            format.html do
                if item.update(params.require(:item).permit(:name, :description, :category, :price))
                    flash[:success] = 'Item updated successfully'
                    redirect_to items_url
                else
                    # error message
                    flash.now[:error] = 'Error: Item could not be updated'
                    # render edit
                    render :edit, locals: { item: item }
                end
            end
        end
    end


    def show
        item = Item.find(params[:id])
        respond_to do |format|
            format.html { render:show, locals: { item:item} }
        end
    end

    

    def destroy
        item = Item.find(params[:id])
        item.destroy
        respond_to do |format|
            format.html do
                flash[:success] = 'Item removed successfully'
                redirect_to items_url
            end
        end
    end

    def require_permission
        if Item.find(params[:id]).creator != current_user
          redirect_to items_path, flash: { error: "You do not have permission to do that." }
        end
    end
end

class GroupsController < ApplicationController

  def index
    @group = Group.all
  end
  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(group_params)

    @group.save
    redirect_to @group
  end

  def update
    @group = Group.find(params[:id])

    @group.update(group_params)
    redirect_to @group

  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_path
  end

  private
    def group_params
      params.require(:group).permit(:title)
    end


end

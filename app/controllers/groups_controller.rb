class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy, :add]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
    @projects = Project.all
    @projects_by_date = @projects.group_by(&:due_date)
    @tasks = Task.all
    @tasks_by_date = @tasks.group_by(&:due_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @group = current_user.groups.build
  end

  # GET /groups/1/edit
  def edit
  end

  # GET /groups/1/add
  def add
  end


  # POST /groups
  # POST /groups.json
  def create
    @group = current_user.groups.build(group_params)

    respond_to do |format|
      if @group.save
         format.html { redirect_to @group, notice: 'Group was successfully created.' }
         format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:title, :description, :hex,
                                    projects_attributes:[:id, :name, :description, :due_date, :due_time, :_destroy],
                                    teammates_attributes:[:id, :email, :_destroy])
    end
end

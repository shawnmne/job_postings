class PostingsController < ApplicationController
  def index
    @postings=Posting.all
  end

  def create
    @posting = Posting.new(posting_params)
    if @posting.save
      redirect_to :postings, notice: "Success! Have some pie and ice cream!!"
    else
      flash.now[:alert] = "Couldn't save. No Pie For You!"
      render :new
    end
  end



  def new
    @posting = Posting.new
  end


  def show
    @posting = Posting.find(params[:id])
  end

  def update
    @posting = Posting.find(params[:id])
    if @posting.update(posting_params)
      redirect_to posting_path(@posting), notice: "Successfully Updated!!!!"
    else
      flash.now[:alert]="Couldn't update."
      render :edit
    end
  end

  def edit
    @posting = Posting.find(params[:id])
  end

  def destroy
    @posting = Posting.find(params[:id])
    @posting.destroy
    redirect_to :postings, notice: "Successfully deleted!!!"
  end

  private
  def posting_params
        params.require(:posting).permit(:company_name, :job_title, :description, :location, :how_to_apply)
  end
end

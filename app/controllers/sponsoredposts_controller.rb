class SponsoredpostsController < ApplicationController

  def show
    @sponsoredpost = Sponsoredpost.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @sponsoredpost = Sponsoredpost.new
  end

  def create
        @sponsoredpost = Sponsoredpost.new
        @sponsoredpost.title = params[:sponsoredpost][:title]
        @sponsoredpost.body = params[:sponsoredpost][:body]
        @sponsoredpost.price = params[:sponsoredpost][:price]
        @topic = Topic.find(params[:topic_id])
        @sponsoredpost.Topic = @topic
        @topic_id = :topic_id
   
        if @sponsoredpost.save
          flash[:notice] = "Post was saved."
          redirect_to [@topic, @sponsoredpost]
        else
          flash.now[:alert] = "There was an error saving the sponsored post. Please try again."
          render :new
        end
      end

  def edit
    @sponsoredpost = Sponsoredpost.find(params[:id])
  end

  def update
    @sponsoredpost = Sponsoredpost.find(params[:id])
    @sponsoredpost.title = params[:sponsoredpost][:title]
    @sponsoredpost.body = params[:sponsoredpost][:body]
    @sponsoredpost.price = params[:sponsoredpost][:price]
    @topic = Topic.find(params[:topic_id])
    @sponsoredpost.Topic = @topic
    @topic_id = :topic_id

    if @sponsoredpost.save
      flash[:notice] = "Post was updated."
      redirect_to [@sponsoredpost.Topic, @sponsoredpost]
    else
      flash.now[:alert] = "There was an error saving the sponsored post. Please try again."
      render :edit
    end
  end

end

class TopicsController < ApplicationController
def index
  @topics = Topic.all
end
  def show
      @topic = Topic.find(params[:id])

         @blogs = @topic.blogs.limit(10)
      end
       # @blogs = @topic.blogs.paginate :page => params[:page], :per_page => 20
    # end
    # def find_blogs
    #    @blogs = @topic.blogs.paginate :page => params[:page], :per_page => 20
    # end

private
def topic_params
  params.require(:topic).permit( :topic)
end
end

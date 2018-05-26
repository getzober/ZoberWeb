class SitemapController < ApplicationController
  def index
    @Blogs = Blog.all(:select => "title, id, updated_at", :order => "updated_at DESC", :limit => 50000)

    respond_to do |format|
      format.xml { render :layout => false }
    end
  end
end

class BidsController < ApplicationController
  def index
    matching_bids = Bid.all

    @list_of_bids = matching_bids.order({ :created_at => :desc })

    render({ :template => "bids/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_bids = Bid.where({ :id => the_id })

    @the_bid = matching_bids.at(0)

    render({ :template => "bids/show" })
  end

  def create
    the_bid = Bid.new
    the_bid.bid_amount = params.fetch("query_bid_amount")
    the_bid.auctioner_id = params.fetch("query_auctioner_id")
    the_bid.buyer_id = "None"
    the_bid.department_id = params.fetch("query_department_id")
    the_bid.title = params.fetch("query_title")
    the_bid.description = params.fetch("query_description")
    the_bid.deadline = params.fetch("query_deadline")

    if the_bid.valid?
      the_bid.save
      redirect_to("/bids", { :notice => "Bid created successfully." })
    else
      redirect_to("/bids", { :alert => the_bid.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_bid = Bid.where({ :id => the_id }).at(0)

    the_bid.bid_amount = params.fetch("query_bid_amount")
    the_bid.auctioner_id = params.fetch("query_auctioner_id")
    the_bid.buyer_id = "None"
    the_bid.department_id = params.fetch("query_department_id")
    the_bid.title = params.fetch("query_title")
    the_bid.description = params.fetch("query_description")
    the_bid.deadline = params.fetch("query_deadline")


    if the_bid.valid?
      the_bid.save
      redirect_to("/bids/#{the_bid.id}", { :notice => "Bid updated successfully."} )
    else
      redirect_to("/bids/#{the_bid.id}", { :alert => the_bid.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_bid = Bid.where({ :id => the_id }).at(0)

    the_bid.destroy

    redirect_to("/bids", { :notice => "Bid deleted successfully."} )
  end

  def comment
    input_bid_id = params.fetch("input_bid_id")
    input_author_id = params.fetch("input_author_id")
    input_comment = params.fetch("input_comment")
    new_comment = Comment.new
    new_comment.body = input_comment
    new_comment.author_id = input_author_id
    new_comment.bid_id = input_bid_id
    new_comment.save
    redirect_to("/bids/" + input_bid_id)
  end

end

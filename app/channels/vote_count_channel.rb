class VoteCountChannel < ApplicationCable::Channel
  def subscribed
    stream_from "vote_count"
  end

  # def unsubscribed
  #   # Any cleanup needed when channel is unsubscribed
  # end
end

class PhotosChannel < ApplicationCable::Channel
  def subscribed
    stream_from "photos"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

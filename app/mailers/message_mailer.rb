class MessageMailer < ActionMailer::Base

  default from: "Washington Island Ferry <noreply@insightcreative.com>"
  default to: "Andrea Lasecki <alasecki@insightcreative.com>, Kevin McGillivray <kmcgillivray@insightcreative.com>"

  def new_message(message)
    @message = message

    mail subject: "New story – Washington Island Ferry"
  end

end

require 'houston'

class Broadcast < ApplicationRecord
  belongs_to :customer

  def send_push(users)
    customer = self.customer
    if !customer.present?
      return
    end
    if customer.ios_push_cert == nil
      return
    end
    users.each do |user|
      if user.push_token == nil
        next
      end
      apn = Houston::Client.development
      apn.certificate = customer.ios_push_cert
      notification = Houston::Notification.new(device: user.push_token)
      notification.alert = self.title
      notification.custom_data = {
        title: self.title,
        content: self.body,
        message_id: "900"
      }
      puts apn
      apn.push(notification)
    end
  end
end

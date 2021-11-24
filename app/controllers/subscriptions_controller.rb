# frozen_string_literal: true

class SubscriptionsController < ApplicationController
  def write
    Subscription.create(description: params["name"])

    render json: { message: "#{params["name"]}, sua inscrição na turma SPDv1.7 realizada com sucesso!" }
  end
end

# frozen_string_literal: true

class SubscriptionsController < ApplicationController

  def read
    render json: { message: "#{Subscription.count} inscrições na turma SPDv1.7 realizadas com sucesso!" }
  end

  def write
    Subscription.create(description: params["name"])

    render json: { message: "#{params["name"]}, sua inscrição na turma SPDv1.7 foi realizada com sucesso!" }
  end

end

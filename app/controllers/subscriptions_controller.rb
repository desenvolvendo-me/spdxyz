# frozen_string_literal: true

class SubscriptionsController < ApplicationController

  def read
    render json: { message: "#{Subscription.count} inscrições na turma SPDv1.7 realizadas com sucesso!" }
  end

  def write
    SubscribeJob.perform_later(subscription_params)

    render json: { message: "#{subscription_params["aluno"]}, sua inscrição na turma SPDv1.7 foi realizada com sucesso!" }
  end

  private

  def subscription_params
    params.permit(:aluno, turma: [:nome])
  end

end

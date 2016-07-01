class CandidateMailer < ActionMailer::Base
  layout 'mailer'
  default from: "gtiengenhariajr@gmail.com"

  def confirm_inscription(candidate)
    set_user(candidate)
    @attrs = columns

    mail to: @candidate.email, subject: 'Inscrição realizada com sucesso!'
  end

private

  def set_user(candidate)
    @candidate = candidate
  end

  def columns
    cols = Candidate.columns.map { |c| c.name }
    excluded_columns.each { |c| cols.delete(c) }
    cols
  end

  def excluded_columns
    ['id', 'created_at', 'updated_at']
  end
end

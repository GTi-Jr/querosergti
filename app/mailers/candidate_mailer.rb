class CandidateMailer < ActionMailer::Base
  layout 'mailer'

  default from: "gtiengenhariajr@gmail.com"

  # Me permite usar o helper
  add_template_helper(CandidatesHelper)

  def confirm_inscription(candidate)
    set_candidate(candidate)
    @attrs   = columns
    @columns = humanized_columns

    mail to: @candidate.email, subject: 'Inscrição realizada com sucesso!'
  end

private

  def set_candidate(candidate)
    @candidate = candidate
  end

  def columns
    cols = Candidate.columns.map { |c| c.name }
    excluded_columns.each { |c| cols.delete(c) }
    cols
  end

  def humanized_columns
    columns.map { |c| Candidate.human_attribute_name(c) }
  end

  def excluded_columns
    ['id', 'created_at', 'updated_at']
  end
end

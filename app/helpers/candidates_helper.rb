module CandidatesHelper
  def greeting
    time = Time.now

    case time.hour
    when (0..5)   then 'Boa madrugada'
    when (6..11)  then 'Bom dia'
    when (12..17) then 'Boa tarde'
    when (18..23) then 'Boa noite'
    end
  end
end

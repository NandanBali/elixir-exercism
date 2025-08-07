defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    cond do
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      not legacy? and level == 0 -> :trace
      not legacy? and level == 5 -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    cond do
      to_label(level, legacy?) == :error or to_label(level, legacy?) == :fatal -> :ops
      to_label(level, legacy?) == :unknown -> cond do
        legacy? -> :dev1
        not legacy? -> :dev2
        end
      true -> false
    end
  end
end

defmodule CreditCard do
  # @enforce_keys [:expire_year, :type]
  defstruct [:expire_year, :type]

  def process(%CreditCard{type: "discover"}), do: raise(FunctionClauseError)
  def process(%CreditCard{expire_year: year}) when year < 2018, do: raise(FunctionClauseError)
  def process(%CreditCard{}), do: "OK!"
  def process(_), do: raise(FunctionClauseError)
end

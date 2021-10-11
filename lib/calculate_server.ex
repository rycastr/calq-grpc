defmodule Calq.Calculate.Server do
  use GRPC.Server, service: Calq.Calculate.Service

  def sum(%{left: left, right: right}, _stream) do
    Calq.CalculateReply.new(result: left + right)
  end

  def multiply(%{left: left, right: right}, _stream) do
    Calq.CalculateReply.new(result: left * right)
  end
end

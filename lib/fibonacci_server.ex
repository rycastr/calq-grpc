defmodule Calq.Fibonacci.Server do
  use GRPC.Server, service: Calq.Fibonacci.Service

  def calcule(request, _stream) do
    Calq.FibonacciReply.new(result: do_calcule(request.value))
  end

  defp do_calcule(1), do: 1
  defp do_calcule(2), do: 1

  defp do_calcule(n) when n > 2,
    do: do_calcule(n - 1) + do_calcule(n - 2)
end

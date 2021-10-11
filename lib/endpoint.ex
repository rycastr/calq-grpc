defmodule Calq.Endpoint do
  use GRPC.Endpoint

  intercept(GRPC.Logger.Server)
  run(Calq.Calculate.Server)
  run(Calq.Fibonacci.Server)
end

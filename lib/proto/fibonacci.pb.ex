defmodule Calq.FibonacciRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: integer
        }

  defstruct [:value]

  field :value, 1, type: :int32
end

defmodule Calq.FibonacciReply do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: integer
        }

  defstruct [:result]

  field :result, 1, type: :int32
end

defmodule Calq.Fibonacci.Service do
  @moduledoc false
  use GRPC.Service, name: "calq.Fibonacci"

  rpc :Calcule, Calq.FibonacciRequest, Calq.FibonacciReply
end

defmodule Calq.Fibonacci.Stub do
  @moduledoc false
  use GRPC.Stub, service: Calq.Fibonacci.Service
end

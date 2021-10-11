defmodule Calq.CalculateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          left: integer,
          right: integer
        }

  defstruct [:left, :right]

  field :left, 1, type: :int32
  field :right, 2, type: :int32
end

defmodule Calq.CalculateReply do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: integer
        }

  defstruct [:result]

  field :result, 1, type: :int32
end

defmodule Calq.Calculate.Service do
  @moduledoc false
  use GRPC.Service, name: "calq.Calculate"

  rpc :Sum, Calq.CalculateRequest, Calq.CalculateReply

  rpc :Multiply, Calq.CalculateRequest, Calq.CalculateReply
end

defmodule Calq.Calculate.Stub do
  @moduledoc false
  use GRPC.Stub, service: Calq.Calculate.Service
end

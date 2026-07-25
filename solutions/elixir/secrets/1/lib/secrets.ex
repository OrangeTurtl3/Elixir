defmodule Secrets do
  def secret_add(secret) do
    adder = fn param ->
      param + secret
    end
  end

  def secret_subtract(secret) do
    subtracter = fn param ->
      param - secret
    end
  end

  def secret_multiply(secret) do
    multiplier = fn param ->
      param * secret
    end
  end
    
  def secret_divide(secret) do
    divider = fn param ->
      div(param,secret)
    end
  end

  def secret_and(secret) do
    ander = fn param ->
      Bitwise.band(param,secret)
    end
  end

  def secret_xor(secret) do
    xorer = fn param ->
      Bitwise.bxor(param,secret)
    end
  end

  def secret_combine(secret_function1, secret_function2) do
    combine = fn param ->
      param = secret_function1.(param)
      secret_function2.(param)
    end
  end
end

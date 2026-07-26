defmodule LanguageList do
  def new() do
    list = []
    list
  end

  def add(list, language) do
    list = [language | list]
    list
  end

  def remove(list) do
    tl(list)
  end

  def first(list) do
    hd(list)
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end

defmodule MacroTest.Router do
  defmacro get(function, block) do
    quote do
      def unquote(function) do
        unquote(block)
      end
    end
  end
end

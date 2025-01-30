defmodule EshMessengerWeb.UserSocket do
  use Phoenix.Socket

  ## Channels
  channel "chat_room:lobby", EshMessengerWeb.ChatRoomChannel

  # This function is called when a user tries to connect
  # You can add logic here for authentication, user verification, etc.
  def connect(_params, socket, _connect_info) do
    {:ok, socket}
  end

  # This function returns the socket id,
  # which is used to identify all sockets for a given user.
  # Returning `nil` means this socket is anonymous.
  def id(_socket), do: nil
end

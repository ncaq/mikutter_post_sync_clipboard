Plugin.create(:mikutter_post_sync_clipboard) do
  filter_gui_postbox_post do |box|
    text = ::Plugin.create(:gtk).widgetof(box).widget_post.buffer.text
    ::Gtk::Clipboard.copy(text)
    [box]
  end
end

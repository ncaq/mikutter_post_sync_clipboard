Plugin.create(:mikutter_post_sync_clipboard) do
  filter_gui_postbox_post do |i_postbox, options = {}|
    text = ::Plugin.create(:gtk).widgetof(i_postbox).widget_post.buffer.text
    ::Gtk::Clipboard.copy(text)
    [i_postbox, options]
  end
end

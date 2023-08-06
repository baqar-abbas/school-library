require './app'
require './ui'
require './save_data'
require './book'

include SaveData
def main
  app = App.new
  ui = UI.new(app)

  ui.main_loop
end

def exit_app
  save_data
  puts 'Thanks for using the school library app'
  exit
end

main

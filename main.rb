require './app'
require './ui'

def main
  app = App.new
  ui = UI.new(app)

  ui.main_loop
end

def exit_app
  puts 'Thanks for using the school library app'
  exit
end

main

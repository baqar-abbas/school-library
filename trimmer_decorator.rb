require './base_decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    return unless @nameable.correct_name.length > 10

    @nameable.correct_name[0..9]
  end
end

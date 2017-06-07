class App.DateTimePicker
  constructor: ->
    @datetime()
    @date()

  datetime: ->
    # $('input.datetimepicker').each (index, element) =>
    #   $(element).datetimepicker
    #     maxDate: 'now'
    #     icons:
    #       date: 'fa fa-calendar'
    #       time: 'fa fa-clock-o'
    #       up: 'fa fa-chevron-up'
    #       down: 'fa fa-chevron-down'
    #       previous: 'fa fa-chevron-left'
    #       next: 'fa fa-chevron-right'
    #       today: 'fa fa-crosshairs'
    #       clear: 'fa fa-trash-o'
    #       close: 'fa fa-times'
    $('input.datetimepicker').datetimepicker()

  date: ->
    $('input.datepicker').each (index, element) =>
      $(element).datetimepicker
        maxDate: 'now'

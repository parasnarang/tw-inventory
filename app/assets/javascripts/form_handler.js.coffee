@form_handler =
  new_office:
    success: (data, $form)->
      alert('a');
      notify.notice('Office created successfully')
      $form.parents('.modal').find(".close").click()

  import_assets:
    success: (data, $form)->
      notify.notice('Assets imported successfully')
      $form.parents('.modal').find(".close").click()

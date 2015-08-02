#Pre Commit
Pronto Run

## Upgrade Notes

Re-run the migrations generator

    rake acts_as_taggable_on_engine:install:migrations

This will create any new migrations and skip existing ones

## Gem Usage
 Inside your views, use the 'simple_form_for' with one of the Bootstrap form
  classes, '.form-horizontal' or '.form-inline', as the following:

    = simple_form_for(@user, html: { class: 'form-horizontal' }) do |form|
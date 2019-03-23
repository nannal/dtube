
// we load settings from a remote server because 'we are new school'
$.get('http://settings/settings.json', function(json, result) {
  if (result == 'success') {
    Meteor.settings.public = json
    Session.set('remoteSettings', Meteor.settings.public.remote)
  }
})

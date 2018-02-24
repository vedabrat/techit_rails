(function() {
  // Handles the old Apply with LinkedIn flow

  // Setup an event listener to make an API call once auth is complete
  window.onLinkedInLoad = function() {
    $('.linkedin-auth-button').first().on('click', function(){
      IN.Event.on(IN,'systemReady', function(){
        IN.User.authorize(getProfileData);
      });
    })
  };

  // Handle an error response from the API call
  function onError(error) {
    console.error(error);
  }

  // Use the API call wrapper to request the member's profile data
  function getProfileData() {
    // requires r_fullprofile permission
    var profileFields = [
      'id',
      'first-name',
      'last-name',
      'headline',
      'formatted-name',
      'summary',
      'public-profile-url',
      'picture-url',
      'location',
      'positions',
      'specialties',
      'educations',
      'interests',
      'publications',
      'skills',
      'volunteer',
      'certifications'
    ].join(',');
    // requires r_emailaddress permission
    var emailAddressFields = [
      'email-address'
    ].join(',');
    // requires r_contactinfo permission
    var contactInfoFields = [
      'phone-numbers',
      'im-accounts',
      'main-address',
      'twitter-accounts',
      'primary-twitter-account'
    ].join(',');
    var requestUrl = [
      '/people/~:(',
      profileFields,
      ',',
      emailAddressFields,
      ',',
      contactInfoFields,
      ')?format=json',
    ].join('');
    IN.API.Raw(requestUrl)
      .result(onSuccess).error(onError);
  }

  // Handle the successful return from the API call
  function onSuccess(data) {
    if (!data) { return; }

    $('input[name=linkedInData]').val( JSON.stringify(data) );
    var $successCheckmark = $('.linkedin-login-success');
    $successCheckmark.show();
    var $applyButton = $('.linkedin-auth-button');
    $applyButton.addClass('added');
    var $applyButtonText = $applyButton.children('.default-label');
    $applyButtonText.text('Profile added');

    // Populate name
    if (data.formattedName) {
      updateIfEmpty($('input[name=name]'), data.formattedName.trim());
    }

    // Populate email address
    if (data.emailAddress) {
      updateIfEmpty($('input[name=email]'), data.emailAddress.toLowerCase().trim());
    }

    // Populate phone number
    if (data.phoneNumbers && data.phoneNumbers.values) {
      for (var i = 0; i < data.phoneNumbers.values.length; i++){
        var number = data.phoneNumbers.values[i];
        if (!number.phoneNumber){
          continue
        }
        updateIfEmpty($('input[name=phone]'), number.phoneNumber.trim());
      }
    }

    // Populate org name
    if (data.positions && data.positions.values){
      for (var i = 0; i < data.positions.values.length; i++){
        var position = data.positions.values[i];
        if (!position){continue}
        if (position.isCurrent && position.company && position.company.name){
          updateIfEmpty($('input[name=org]'), position.company.name.trim());
        }
      }
    }

    // Populate linkedin url
    if (data.publicProfileUrl){
      updateIfEmpty($("input[name='urls[LinkedIn]']"), data.publicProfileUrl.trim());
    }

    // Populate twitter url
    if (data.primaryTwitterAccount && data.primaryTwitterAccount.providerAccountName){
      var twitterHandle = data.primaryTwitterAccount.providerAccountName;
      updateIfEmpty($("input[name='urls[Twitter]']"), 'https://twitter.com/' + twitterHandle.trim());
    } else if (data.twitterAccounts && data.twitterAccounts.length){
      for (var i = 0; i < data.twitterAccounts.length; i++){
        var account = data.twitterAccounts[i];
        if (!account || !account.providerAccountName){continue}
        var twitterHandle = account.providerAccountName;
        updateIfEmpty($("input[name='urls[Twitter]']"), 'https://twitter.com/' + twitterHandle.trim());
      }
    }
  }

  function updateIfEmpty ($field, value) {
    if (!$field || $field.val()) {
      return;
    }
    $field.val(value);
  }
})();

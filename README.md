Spree Bank Transfer
===================

This extension is designed to allows you to use bank transfer as a payment method. This extension make use of [Twilio][1] API to send SMS to the owner informing that customers has made their payment.

Although every measure have been taken to make sure that this extension should function as stated, your environment might hinder the functionality of this extension. If that is the case, drop in by the FreeNode IRC at #spree and see whether there are others who can help you.

__Disclaimer:__ Use this at you own risk. You've been warned.

Installation
============

Add either one of the following snippet to your `Gemfile`

``` ruby
gem 'spree_bank_transfer' # rubygems.org
```

``` ruby
gem 'spree_bank_transfer', :github => 'fuyo/spree-bank-transfer', :tag => 'v1.0.0' # github.com
```

and then run the following snippets from the root of your [Spree][2] application.

``` shell
$ rails g spree_bank_transfer:install
```

Expected Checkout Flow
======================

1. Users add items to their shopping cart.
2. Users checkout their shopping cart.
3. Users enter their shipping and billing address.
4. Users choose their desired shipping method.
5. Users choose their desired payment method.
6. If they choose `Bank Transfer`, they would be shown the details of bank account(s) to transfer to.
7. Users would then to continue to the page where the summary of the order is shown.
8. Users would then need to inform that they've made the payment by confirming their payment.
9. Users would then be required to fill in the fields, informing their payment confirmation.
10. A message saying that payment confirmation has been received would be shown to the users.

Example
=======

- Visit `https://YOUR_SPREE_URL/admin/payment_methods/new` to add a new payment method.
- Select `Spree::PaymentMethod::BankTransfer` from the `Provider` dropdown.
- Enter the desired `Name` and `Description` for this payment method.

After creating the payment method, you'll be required to enter the following:

- `Twilio SID` - The application ID to the [Twilio][1] API
- `Twilio Token` - The token to the [Twilio][1] API
- `Twilio From` - The phone number used to send the SMS from.
- `Twilio To` - The phone number user to send the SMS to.

The above informations are required for this extension to function properly. Failure to do so may produce unexpected results.

After entering the information above, you'll be required to enter some bank account information. This can be done by visiting your `Configuration` menu, and then `Bank Accounts` to the right sidebar.

You'll be required to enter the following informations for your bank account:

- `Bank Name`
- `Bank Branch`
- `Account Owner`
- `Account Number`

These requirements might vary depending on your location and your bank. Should you need more details to be added to this `BankAccount` model, please fork this project and make the changes to reflect your needs instead.

Testing
=======

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

``` shell
$ bundle
$ bundle exec rake test_app
$ bundle exec rspec spec
```

Copyright (c) 2013 [Joni Chandra](joniliciously@gmail.com), released under the New BSD License. For more information, see LICENSE.

To Do
=====

- No error check has been written when using the Twilio API.
- No tests has been written.

Resources
=========

- Spree Documentation - [http://guides.spreecommerce.com/][3]
- Spree New Guides - [https://github.com/spree/spree-guides/tree/new_guides][4]
- Twilio Documentation - [http://www.twilio.com/docs][5]

[1]: http://www.twilio.com/
[2]: http://webchat.freenode.net/?channels=spree
[3]: http://guides.spreecommerce.com/
[4]: https://github.com/spree/spree-guides/tree/new_guides
[5]: http://www.twilio.com/docs

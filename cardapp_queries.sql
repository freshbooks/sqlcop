-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_already_authorized
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_client_id_mismatch_user
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_current_cc_token
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_error
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_invalid_expiry({},)
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_invalid_expiry({'expiry_month': '09'},)
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_invalid_expiry({'expiry_year': '2000'},)
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_invalid_expiry({'expiry_year': '00'},)
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_invalid_expiry({'expiry_month': 'xy', 'expiry_year': '2010'},)
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_invalid_expiry({'expiry_month': '06', 'expiry_year': 'xy'},)
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_multiple_profiles
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_without_client_id
-- test.component.test_cc_token.TestCCTokenGet.test_cc_token_get_admin
-- test.component.test_cc_token.TestCCTokenGet.test_cc_token_get_client
-- test.component.test_cc_token.TestCCTokenGet.test_cc_token_get_error
-- test.component.test_cc_token.TestCCTokenGet.test_cc_token_get_staff
-- test.component.test_credit_card_type.TestCreditCardTypes.test_get_for_ca_connection
-- test.component.test_credit_card_type.TestCreditCardTypes.test_get_for_us_connection
-- test.component.test_credit_card_type.TestCreditCardTypes.test_get_using_admin_masterlock_token
-- test.component.test_gateway.TestGateway.test_search_connection
-- test.component.test_gateway.TestGateway.test_search_connection_forbidden({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_gateway.TestGateway.test_search_connection_forbidden({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_forbidden_invalid_system_id
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_not_found
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_successfully
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_using_client_masterlock_token
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_using_staff_masterlock_token
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_expired_last_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_bank_info_but_no_bank_connected
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_incoming_pending_amount
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_no_bank_connected_with_txns
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_outgoing_amount_only_no_next_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_overlap_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_staff_token
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_include
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_reserve_or_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_no_captured_withdrawal
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, True, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, True, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, False, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, False, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, True, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, True, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, False, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, False, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_without_tos_accepted_should_error
-- test.component.test_gateway_processor.TestNewUser.test_new_user_gets_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_active_system_with_different_email
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_gets_token_reactivated_and_new_connection
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_disabled_conn_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_get_reactivated
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_w_disabled_acct_not_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_conn_for_different_system_gets_new_conn
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_connection_on_system_doesnt_provision
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_gateway_processor.TestSkipProvisioning.test_invalid_email_error_from_wepay
-- test.component.test_gateway_processor.TestSkipProvisioning.test_invalid_ip_address
-- test.component.test_gateway_processor.TestSkipProvisioning.test_ip_for_disallowed_country
-- test.component.test_gateway_processor.TestSkipProvisioning.test_message_that_doesnt_pass_validation
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_account_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_1008_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_2004_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_currency_mismatch
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_empty_cc_token_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_empty_currency_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_empty_invoice_amount
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_empty_invoiceid_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incoming_payments_paused_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incorrect_invoice_amount
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invalid_cc_token_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invalid_gateway_id
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invoice_already_paid
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_less_than_ninety_nine_cents_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_permission_denied
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_processing_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_unsupported_wepay_currency
-- test.component.test_ipn_account.TestAccountCallback.test_account_action_required_changes_user_state_to_registered
-- test.component.test_ipn_account.TestAccountCallback.test_account_activated
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_callback_succeeded
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_more_reasons
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_reason
-- test.component.test_ipn_account.TestAccountCallback.test_account_inactive_callback
-- test.component.test_ipn_account.TestAccountCallback.test_account_update_currencies
-- test.component.test_ipn_account.TestAccountCallback.test_account_with_change_in_payments_status
-- test.component.test_ipn_account.TestAccountCallback.test_user_deleted_triggers_account_delete_callback
-- test.component.test_ipn_account.TestAccountCallback.test_user_is_deleted
-- test.component.test_ipn_account.TestAccountCallback.test_withdrawal_ipn
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_authorized_no_state_change
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_no_payment_or_expense
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_deleted_resource
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_error
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_gateway_connection_inactive
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_invalid_connection_id
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_partial_refund
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_refunded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_expense_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_payment_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_pending_user_sends_confirmation_email
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_7002_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_recurring_invoice_checkout_succeeded_callback
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_email_changed
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_no_state_change
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_deleted
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token_multiple_connections
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_wepay_error
-- test.component.test_ipn_user.TestUserCallback.test_user_registered_callback_succeeded
-- test.component.test_ipn_user.TestUserCallback.test_user_undeleted_callback_failed
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_different_system_id
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_inactive_connection
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_invalid_masterlock_token
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_missing_redirect_uri
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_successfully
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_expired_token
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_invalid_token
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_no_active_connections
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_one_connection
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_two_connections
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_inactive_connection
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_invalid_token
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_missing_required_fields
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_non_matching_system_id
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_successfully
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_forbidden_error_with_client
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_no_cc_token_with_profile
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_successfully
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_no_active_connection
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_no_transactions
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_successful
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_using_client_masterlock_token
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_using_staff_masterlock_token
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_failed_transactions
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_pending_transaction_includes_fee
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_bad_currency
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_bad_error_type
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_invoice_visible
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_matching_invoice_amount_and_currency
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_system_id_connection_id_mismatch
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_user_has_no_access_to_connection
-- test.component.test_transaction.TestTransactionResource.test_get_transaction_successful
-- test.component.test_withdrawal.TestWithdrawals.test_no_withdrawals
-- test.component.test_withdrawal.TestWithdrawals.test_show_withdrawals_history
SELECT DATABASE()
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_active_system_with_different_email
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_gets_token_reactivated_and_new_connection
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_disabled_conn_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_get_reactivated
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_w_disabled_acct_not_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_conn_for_different_system_gets_new_conn
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_connection_on_system_doesnt_provision
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_with_secondary_email_doesnt_get_provisioned
SELECT count(*) AS count_1 
FROM (SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection 
WHERE gateway_connection.system_id = %s AND gateway_connection.gateway_name = %s ORDER BY gateway_connection.deleted_at) AS anon_1
-- test.component.test_gateway_processor.TestNewUser.test_new_user_gets_provisioned
SELECT count(*) AS count_1 
FROM (SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection 
WHERE gateway_connection.system_id = %s AND gateway_connection.gateway_name = %s) AS anon_1
-- test.component.test_gateway_processor.TestSkipProvisioning.test_invalid_email_error_from_wepay
-- test.component.test_gateway_processor.TestSkipProvisioning.test_invalid_ip_address
-- test.component.test_gateway_processor.TestSkipProvisioning.test_ip_for_disallowed_country
-- test.component.test_gateway_processor.TestSkipProvisioning.test_message_that_doesnt_pass_validation
SELECT count(*) AS count_1 
FROM (SELECT gateway_user.gateway_user_id AS gateway_user_gateway_user_id, gateway_user.gateway_name AS gateway_user_gateway_name, gateway_user.access_token AS gateway_user_access_token, gateway_user.access_token_expiry AS gateway_user_access_token_expiry, gateway_user.user_state AS gateway_user_user_state, gateway_user.email AS gateway_user_email, gateway_user.created_at AS gateway_user_created_at, gateway_user.updated_at AS gateway_user_updated_at, gateway_user.access_token_revoked AS gateway_user_access_token_revoked 
FROM gateway_user) AS anon_1
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_expired_last_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_bank_info_but_no_bank_connected
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_incoming_pending_amount
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_no_bank_connected_with_txns
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_outgoing_amount_only_no_next_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_overlap_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_staff_token
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_include
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_reserve_or_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_no_captured_withdrawal
SELECT count(*) AS count_1 
FROM (SELECT transaction.id AS transaction_id, transaction.system_id AS transaction_system_id, transaction.user_id AS transaction_user_id, transaction.user_level AS transaction_user_level, transaction.gateway_connection_id AS transaction_gateway_connection_id, transaction.reference_number AS transaction_reference_number, transaction.created_at AS transaction_created_at, transaction.amount AS transaction_amount, transaction.currency AS transaction_currency, transaction.credit_card_type AS transaction_credit_card_type, transaction.updated_at AS transaction_updated_at, transaction.status AS transaction_status, transaction.expense_id AS transaction_expense_id, transaction.invoice_id AS transaction_invoice_id, transaction.payment_id AS transaction_payment_id, transaction.profile_id AS transaction_profile_id 
FROM transaction 
WHERE transaction.status = %s AND transaction.gateway_connection_id = %s) AS anon_1
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_already_authorized
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_current_cc_token
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_multiple_profiles
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_without_client_id
-- test.component.test_cc_token.TestCCTokenGet.test_cc_token_get_admin
-- test.component.test_cc_token.TestCCTokenGet.test_cc_token_get_client
-- test.component.test_cc_token.TestCCTokenGet.test_cc_token_get_error
-- test.component.test_cc_token.TestCCTokenGet.test_cc_token_get_staff
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_no_cc_token_with_profile
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_successfully
SELECT credit_card_token.id AS credit_card_token_id, credit_card_token.gateway_name AS credit_card_token_gateway_name, credit_card_token.system_id AS credit_card_token_system_id, credit_card_token.client_id AS credit_card_token_client_id, credit_card_token.profile_id AS credit_card_token_profile_id, credit_card_token.cc_token AS credit_card_token_cc_token, credit_card_token.created_at AS credit_card_token_created_at, credit_card_token.deleted_at AS credit_card_token_deleted_at, credit_card_token.card_number AS credit_card_token_card_number, credit_card_token.card_type AS credit_card_token_card_type, credit_card_token.card_holder_name AS credit_card_token_card_holder_name, credit_card_token.expiry_month AS credit_card_token_expiry_month, credit_card_token.expiry_year AS credit_card_token_expiry_year 
FROM credit_card_token 
WHERE credit_card_token.deleted_at = %s AND credit_card_token.profile_id = %s AND credit_card_token.system_id = %s
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_current_cc_token
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_multiple_profiles
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_without_client_id
SELECT credit_card_token.id AS credit_card_token_id, credit_card_token.gateway_name AS credit_card_token_gateway_name, credit_card_token.system_id AS credit_card_token_system_id, credit_card_token.client_id AS credit_card_token_client_id, credit_card_token.profile_id AS credit_card_token_profile_id, credit_card_token.cc_token AS credit_card_token_cc_token, credit_card_token.created_at AS credit_card_token_created_at, credit_card_token.deleted_at AS credit_card_token_deleted_at, credit_card_token.card_number AS credit_card_token_card_number, credit_card_token.card_type AS credit_card_token_card_type, credit_card_token.card_holder_name AS credit_card_token_card_holder_name, credit_card_token.expiry_month AS credit_card_token_expiry_month, credit_card_token.expiry_year AS credit_card_token_expiry_year 
FROM credit_card_token 
WHERE credit_card_token.deleted_at = %s AND credit_card_token.profile_id = %s AND credit_card_token.system_id = %s 
 LIMIT %s
-- test.component.test_cc_token.TestCCTokenGet.test_cc_token_get_admin
-- test.component.test_cc_token.TestCCTokenGet.test_cc_token_get_client
-- test.component.test_cc_token.TestCCTokenGet.test_cc_token_get_staff
SELECT credit_card_token.id AS credit_card_token_id, credit_card_token.gateway_name AS credit_card_token_gateway_name, credit_card_token.system_id AS credit_card_token_system_id, credit_card_token.client_id AS credit_card_token_client_id, credit_card_token.profile_id AS credit_card_token_profile_id, credit_card_token.cc_token AS credit_card_token_cc_token, credit_card_token.created_at AS credit_card_token_created_at, credit_card_token.deleted_at AS credit_card_token_deleted_at, credit_card_token.card_number AS credit_card_token_card_number, credit_card_token.card_type AS credit_card_token_card_type, credit_card_token.card_holder_name AS credit_card_token_card_holder_name, credit_card_token.expiry_month AS credit_card_token_expiry_month, credit_card_token.expiry_year AS credit_card_token_expiry_year 
FROM credit_card_token 
WHERE credit_card_token.id = %s
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_current_cc_token
SELECT credit_card_token.id AS credit_card_token_id, credit_card_token.gateway_name AS credit_card_token_gateway_name, credit_card_token.system_id AS credit_card_token_system_id, credit_card_token.client_id AS credit_card_token_client_id, credit_card_token.profile_id AS credit_card_token_profile_id, credit_card_token.cc_token AS credit_card_token_cc_token, credit_card_token.created_at AS credit_card_token_created_at, credit_card_token.deleted_at AS credit_card_token_deleted_at, credit_card_token.card_number AS credit_card_token_card_number, credit_card_token.card_type AS credit_card_token_card_type, credit_card_token.card_holder_name AS credit_card_token_card_holder_name, credit_card_token.expiry_month AS credit_card_token_expiry_month, credit_card_token.expiry_year AS credit_card_token_expiry_year 
FROM credit_card_token 
WHERE credit_card_token.system_id = %s AND credit_card_token.profile_id = %s AND credit_card_token.deleted_at != %s 
 LIMIT %s
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_no_active_connection
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.country AS gateway_connection_country, gateway_connection_fbpay.gateway_connection_id AS gateway_connection_fbpay_gateway_connection_id, gateway_connection_fbpay.account_id AS gateway_connection_fbpay_account_id, gateway_connection_fbpay.incoming_payments_status AS gateway_connection_fbpay_incoming_payments_status, gateway_connection_fbpay.tos_accepted AS gateway_connection_fbpay_tos_accepted 
FROM gateway_connection INNER JOIN gateway_connection_fbpay ON gateway_connection.id = gateway_connection_fbpay.gateway_connection_id 
WHERE gateway_connection.id = %s
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_account_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_1008_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_2004_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_currency_mismatch
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incoming_payments_paused_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incorrect_invoice_amount
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invalid_cc_token_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invoice_already_paid
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_less_than_ninety_nine_cents_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_permission_denied
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_processing_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_unsupported_wepay_currency
-- test.component.test_ipn_account.TestAccountCallback.test_account_activated
-- test.component.test_ipn_account.TestAccountCallback.test_account_update_currencies
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token_multiple_connections
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_no_cc_token_with_profile
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_successfully
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection 
WHERE %s = gateway_connection.gateway_name AND %s = gateway_connection.gateway_user_id
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_inactive_connection
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_non_matching_system_id
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_successfully
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection 
WHERE gateway_connection.deleted_at = %s AND gateway_connection.gateway_name = %s AND gateway_connection.gateway_user_id = %s AND gateway_connection.system_id = %s ORDER BY gateway_connection.created_at, gateway_connection.id
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_no_active_connections
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_one_connection
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_two_connections
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection 
WHERE gateway_connection.deleted_at = %s AND gateway_connection.gateway_name = %s AND gateway_connection.gateway_user_id = %s ORDER BY gateway_connection.created_at, gateway_connection.id
-- test.component.test_credit_card_type.TestCreditCardTypes.test_get_for_ca_connection
-- test.component.test_credit_card_type.TestCreditCardTypes.test_get_for_us_connection
-- test.component.test_credit_card_type.TestCreditCardTypes.test_get_using_admin_masterlock_token
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_forbidden_invalid_system_id
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_not_found
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_successfully
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_using_client_masterlock_token
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_using_staff_masterlock_token
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_expired_last_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_bank_info_but_no_bank_connected
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_incoming_pending_amount
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_no_bank_connected_with_txns
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_outgoing_amount_only_no_next_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_overlap_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_staff_token
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_include
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_reserve_or_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_no_captured_withdrawal
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, True, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, True, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, False, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, False, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, True, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, True, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, False, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, False, True)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_account_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_1008_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_2004_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_currency_mismatch
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incoming_payments_paused_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incorrect_invoice_amount
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invalid_cc_token_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invalid_gateway_id
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invoice_already_paid
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_less_than_ninety_nine_cents_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_permission_denied
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_processing_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_unsupported_wepay_currency
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_different_system_id
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_inactive_connection
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_successfully
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_forbidden_error_with_client
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_no_cc_token_with_profile
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_successfully
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_invoice_visible
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_matching_invoice_amount_and_currency
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_user_has_no_access_to_connection
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection 
WHERE gateway_connection.deleted_at = %s AND gateway_connection.gateway_name = %s AND gateway_connection.id = %s
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token_multiple_connections
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection 
WHERE gateway_connection.gateway_user_id = %s
-- test.component.test_gateway.TestGateway.test_search_connection
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection 
WHERE gateway_connection.system_id = %s AND gateway_connection.gateway_name = %s
-- test.component.test_gateway_processor.TestNewUser.test_new_user_gets_provisioned
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection 
WHERE gateway_connection.system_id = %s AND gateway_connection.gateway_name = %s 
 LIMIT %s
-- test.component.test_ipn_account.TestAccountCallback.test_withdrawal_ipn
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_authorized_no_state_change
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_no_payment_or_expense
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_deleted_resource
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_error
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_gateway_connection_inactive
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_invalid_connection_id
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_partial_refund
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_refunded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_expense_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_payment_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_pending_user_sends_confirmation_email
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_7002_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_recurring_invoice_checkout_succeeded_callback
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection 
WHERE gateway_connection.system_id = %s AND gateway_connection.gateway_name = %s AND gateway_connection.id = %s
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_active_system_with_different_email
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_gets_token_reactivated_and_new_connection
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_disabled_conn_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_get_reactivated
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_w_disabled_acct_not_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_conn_for_different_system_gets_new_conn
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_connection_on_system_doesnt_provision
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_with_secondary_email_doesnt_get_provisioned
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection 
WHERE gateway_connection.system_id = %s AND gateway_connection.gateway_name = %s ORDER BY gateway_connection.deleted_at 
 LIMIT %s
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_gets_token_reactivated_and_new_connection
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_get_reactivated
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection 
WHERE gateway_connection.system_id = %s AND gateway_connection.gateway_name = %s ORDER BY gateway_connection.deleted_at 
 LIMIT %s, %s
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_gets_token_reactivated_and_new_connection
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_disabled_conn_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_get_reactivated
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_w_disabled_acct_not_provisioned
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection INNER JOIN (SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country, gateway_connection_fbpay.gateway_connection_id AS gateway_connection_fbpay_gateway_connection_id, gateway_connection_fbpay.account_id AS gateway_connection_fbpay_account_id, gateway_connection_fbpay.account_state AS gateway_connection_fbpay_account_state, gateway_connection_fbpay.incoming_payments_status AS gateway_connection_fbpay_incoming_payments_status, gateway_connection_fbpay.tos_accepted AS gateway_connection_fbpay_tos_accepted 
FROM gateway_connection INNER JOIN gateway_connection_fbpay ON gateway_connection.id = gateway_connection_fbpay.gateway_connection_id) AS anon_1 ON gateway_connection.id = anon_1.gateway_connection_fbpay_gateway_connection_id 
WHERE gateway_connection.gateway_user_id = %s AND anon_1.gateway_connection_fbpay_account_state = %s
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_already_authorized
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_current_cc_token
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_error
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_multiple_profiles
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_without_client_id
-- test.component.test_gateway_processor.TestNewUser.test_new_user_gets_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_active_system_with_different_email
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_gets_token_reactivated_and_new_connection
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_disabled_conn_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_get_reactivated
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_w_disabled_acct_not_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_conn_for_different_system_gets_new_conn
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_connection_on_system_doesnt_provision
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_gateway_processor.TestSkipProvisioning.test_invalid_email_error_from_wepay
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_no_active_connection
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_no_transactions
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_successful
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_failed_transactions
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_pending_transaction_includes_fee
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country 
FROM gateway_connection INNER JOIN gateway_user ON gateway_user.gateway_name = gateway_connection.gateway_name AND gateway_user.gateway_user_id = gateway_connection.gateway_user_id 
WHERE gateway_connection.system_id = %s AND gateway_connection.gateway_name = %s AND gateway_user.user_state != %s AND gateway_connection.deleted_at = %s
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, True, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, True, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, False, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, False, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, True, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, True, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, False, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, False, True)
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country, gateway_connection_fbpay.gateway_connection_id AS gateway_connection_fbpay_gateway_connection_id, gateway_connection_fbpay.account_id AS gateway_connection_fbpay_account_id, gateway_connection_fbpay.account_state AS gateway_connection_fbpay_account_state, gateway_connection_fbpay.incoming_payments_status AS gateway_connection_fbpay_incoming_payments_status 
FROM gateway_connection INNER JOIN gateway_connection_fbpay ON gateway_connection.id = gateway_connection_fbpay.gateway_connection_id 
WHERE gateway_connection.id = %s
-- test.component.test_credit_card_type.TestCreditCardTypes.test_get_for_ca_connection
-- test.component.test_credit_card_type.TestCreditCardTypes.test_get_for_us_connection
-- test.component.test_credit_card_type.TestCreditCardTypes.test_get_using_admin_masterlock_token
-- test.component.test_gateway.TestGateway.test_search_connection
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_expired_last_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_bank_info_but_no_bank_connected
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_incoming_pending_amount
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_no_bank_connected_with_txns
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_outgoing_amount_only_no_next_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_overlap_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_staff_token
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_include
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_reserve_or_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_no_captured_withdrawal
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, True, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, True, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, False, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, False, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, True, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, True, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, False, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, False, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_without_tos_accepted_should_error
-- test.component.test_gateway_processor.TestNewUser.test_new_user_gets_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_gets_token_reactivated_and_new_connection
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_get_reactivated
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_conn_for_different_system_gets_new_conn
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_account_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_1008_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_2004_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_currency_mismatch
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_empty_cc_token_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_empty_currency_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_empty_invoice_amount
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_empty_invoiceid_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incoming_payments_paused_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incorrect_invoice_amount
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invalid_cc_token_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invoice_already_paid
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_less_than_ninety_nine_cents_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_permission_denied
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_processing_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_unsupported_wepay_currency
-- test.component.test_ipn_account.TestAccountCallback.test_account_action_required_changes_user_state_to_registered
-- test.component.test_ipn_account.TestAccountCallback.test_account_activated
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_callback_succeeded
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_more_reasons
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_reason
-- test.component.test_ipn_account.TestAccountCallback.test_account_inactive_callback
-- test.component.test_ipn_account.TestAccountCallback.test_account_update_currencies
-- test.component.test_ipn_account.TestAccountCallback.test_account_with_change_in_payments_status
-- test.component.test_ipn_account.TestAccountCallback.test_user_deleted_triggers_account_delete_callback
-- test.component.test_ipn_account.TestAccountCallback.test_user_is_deleted
-- test.component.test_ipn_account.TestAccountCallback.test_withdrawal_ipn
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_authorized_no_state_change
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_no_payment_or_expense
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_deleted_resource
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_error
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_gateway_connection_inactive
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_invalid_connection_id
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_partial_refund
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_refunded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_expense_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_payment_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_pending_user_sends_confirmation_email
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_7002_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_recurring_invoice_checkout_succeeded_callback
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_email_changed
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_no_state_change
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_deleted
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token_multiple_connections
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_wepay_error
-- test.component.test_ipn_user.TestUserCallback.test_user_registered_callback_succeeded
-- test.component.test_ipn_user.TestUserCallback.test_user_undeleted_callback_failed
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_different_system_id
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_inactive_connection
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_invalid_masterlock_token
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_missing_redirect_uri
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_successfully
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_one_connection
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_two_connections
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_inactive_connection
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_successfully
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_forbidden_error_with_client
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_no_cc_token_with_profile
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_successfully
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_no_transactions
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_successful
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_failed_transactions
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_pending_transaction_includes_fee
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_bad_currency
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_bad_error_type
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_invoice_visible
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_matching_invoice_amount_and_currency
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_system_id_connection_id_mismatch
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_user_has_no_access_to_connection
-- test.component.test_transaction.TestTransactionResource.test_get_transaction_successful
-- test.component.test_withdrawal.TestWithdrawals.test_no_withdrawals
-- test.component.test_withdrawal.TestWithdrawals.test_show_withdrawals_history
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country, gateway_connection_fbpay.gateway_connection_id AS gateway_connection_fbpay_gateway_connection_id, gateway_connection_fbpay.account_id AS gateway_connection_fbpay_account_id, gateway_connection_fbpay.account_state AS gateway_connection_fbpay_account_state, gateway_connection_fbpay.incoming_payments_status AS gateway_connection_fbpay_incoming_payments_status, gateway_connection_fbpay.tos_accepted AS gateway_connection_fbpay_tos_accepted 
FROM gateway_connection INNER JOIN gateway_connection_fbpay ON gateway_connection.id = gateway_connection_fbpay.gateway_connection_id 
WHERE gateway_connection.id = %s
-- test.component.test_ipn_account.TestAccountCallback.test_account_action_required_changes_user_state_to_registered
-- test.component.test_ipn_account.TestAccountCallback.test_account_activated
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_callback_succeeded
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_more_reasons
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_reason
-- test.component.test_ipn_account.TestAccountCallback.test_account_inactive_callback
-- test.component.test_ipn_account.TestAccountCallback.test_account_update_currencies
-- test.component.test_ipn_account.TestAccountCallback.test_account_with_change_in_payments_status
-- test.component.test_ipn_account.TestAccountCallback.test_user_deleted_triggers_account_delete_callback
-- test.component.test_ipn_account.TestAccountCallback.test_user_is_deleted
SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country, gateway_connection_fbpay.gateway_connection_id AS gateway_connection_fbpay_gateway_connection_id, gateway_connection_fbpay.account_id AS gateway_connection_fbpay_account_id, gateway_connection_fbpay.account_state AS gateway_connection_fbpay_account_state, gateway_connection_fbpay.incoming_payments_status AS gateway_connection_fbpay_incoming_payments_status, gateway_connection_fbpay.tos_accepted AS gateway_connection_fbpay_tos_accepted 
FROM gateway_connection INNER JOIN gateway_connection_fbpay ON gateway_connection.id = gateway_connection_fbpay.gateway_connection_id 
WHERE gateway_connection_fbpay.account_id = %s
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_expired_last_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_bank_info_but_no_bank_connected
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_incoming_pending_amount
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_no_bank_connected_with_txns
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_outgoing_amount_only_no_next_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_overlap_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_staff_token
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_include
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_reserve_or_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_no_captured_withdrawal
-- test.component.test_ipn_account.TestAccountCallback.test_account_action_required_changes_user_state_to_registered
-- test.component.test_ipn_account.TestAccountCallback.test_account_activated
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_callback_succeeded
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_more_reasons
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_reason
-- test.component.test_ipn_account.TestAccountCallback.test_account_update_currencies
-- test.component.test_ipn_account.TestAccountCallback.test_account_with_change_in_payments_status
SELECT gateway_connection_currency.gateway_connection_id AS gateway_connection_currency_gateway_connection_id, gateway_connection_currency.currency AS gateway_connection_currency_currency, gateway_connection_currency.created_at AS gateway_connection_currency_created_at 
FROM gateway_connection_currency 
WHERE %s = gateway_connection_currency.gateway_connection_id
-- test.component.test_gateway.TestGateway.test_search_connection
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_successfully
-- test.component.test_gateway_processor.TestNewUser.test_new_user_gets_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_active_system_with_different_email
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_gets_token_reactivated_and_new_connection
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_get_reactivated
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_conn_for_different_system_gets_new_conn
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_connection_on_system_doesnt_provision
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token_multiple_connections
SELECT gateway_connection_fbpay.account_state AS gateway_connection_fbpay_account_state, gateway_connection_fbpay.incoming_payments_status AS gateway_connection_fbpay_incoming_payments_status, gateway_connection_fbpay.tos_accepted AS gateway_connection_fbpay_tos_accepted, gateway_connection_fbpay.account_id AS gateway_connection_fbpay_account_id, gateway_connection_fbpay.gateway_connection_id AS gateway_connection_fbpay_gateway_connection_id 
FROM gateway_connection_fbpay 
WHERE %s = gateway_connection_fbpay.gateway_connection_id
-- test.component.test_gateway.TestGateway.test_search_connection
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_callback_succeeded
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_more_reasons
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_reason
-- test.component.test_ipn_account.TestAccountCallback.test_user_deleted_triggers_account_delete_callback
-- test.component.test_ipn_account.TestAccountCallback.test_user_is_deleted
SELECT gateway_connection_fbpay_account_disabled.account_id AS gateway_connection_fbpay_account_disabled_account_id, gateway_connection_fbpay_account_disabled.created_at AS gateway_connection_fbpay_account_disabled_created_at, gateway_connection_fbpay_account_disabled.reason AS gateway_connection_fbpay_account_disabled_reason 
FROM gateway_connection_fbpay_account_disabled 
WHERE %s = gateway_connection_fbpay_account_disabled.account_id ORDER BY gateway_connection_fbpay_account_disabled.reason ASC
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token_multiple_connections
SELECT gateway_user.gateway_user_id AS gateway_user_gateway_user_id, gateway_user.gateway_name AS gateway_user_gateway_name, gateway_user.access_token AS gateway_user_access_token, gateway_user.access_token_expiry AS gateway_user_access_token_expiry, gateway_user.user_state AS gateway_user_user_state, gateway_user.email AS gateway_user_email, gateway_user.created_at AS gateway_user_created_at, gateway_user.updated_at AS gateway_user_updated_at, gateway_user.access_token_revoked AS gateway_user_access_token_revoked 
FROM gateway_user 
WHERE gateway_user.gateway_name = %s AND gateway_user.access_token = %s
-- test.component.test_gateway_processor.TestNewUser.test_new_user_gets_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_gets_token_reactivated_and_new_connection
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_disabled_conn_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_get_reactivated
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_w_disabled_acct_not_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_conn_for_different_system_gets_new_conn
-- test.component.test_gateway_processor.TestSkipProvisioning.test_invalid_email_error_from_wepay
SELECT gateway_user.gateway_user_id AS gateway_user_gateway_user_id, gateway_user.gateway_name AS gateway_user_gateway_name, gateway_user.access_token AS gateway_user_access_token, gateway_user.access_token_expiry AS gateway_user_access_token_expiry, gateway_user.user_state AS gateway_user_user_state, gateway_user.email AS gateway_user_email, gateway_user.created_at AS gateway_user_created_at, gateway_user.updated_at AS gateway_user_updated_at, gateway_user.access_token_revoked AS gateway_user_access_token_revoked 
FROM gateway_user 
WHERE gateway_user.gateway_name = %s AND gateway_user.email = %s AND gateway_user.user_state != %s 
 LIMIT %s
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_already_authorized
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_current_cc_token
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_multiple_profiles
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_without_client_id
-- test.component.test_gateway.TestGateway.test_search_connection
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_expired_last_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_bank_info_but_no_bank_connected
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_incoming_pending_amount
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_no_bank_connected_with_txns
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_outgoing_amount_only_no_next_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_overlap_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_staff_token
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_include
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_reserve_or_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_no_captured_withdrawal
-- test.component.test_gateway_processor.TestNewUser.test_new_user_gets_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_active_system_with_different_email
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_gets_token_reactivated_and_new_connection
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_disabled_conn_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_get_reactivated
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_w_disabled_acct_not_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_conn_for_different_system_gets_new_conn
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_connection_on_system_doesnt_provision
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_account_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_1008_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_2004_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_currency_mismatch
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incoming_payments_paused_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incorrect_invoice_amount
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invalid_cc_token_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invoice_already_paid
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_less_than_ninety_nine_cents_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_permission_denied
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_processing_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_unsupported_wepay_currency
-- test.component.test_ipn_account.TestAccountCallback.test_account_action_required_changes_user_state_to_registered
-- test.component.test_ipn_account.TestAccountCallback.test_account_activated
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_callback_succeeded
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_more_reasons
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_reason
-- test.component.test_ipn_account.TestAccountCallback.test_account_update_currencies
-- test.component.test_ipn_account.TestAccountCallback.test_account_with_change_in_payments_status
-- test.component.test_ipn_account.TestAccountCallback.test_user_deleted_triggers_account_delete_callback
-- test.component.test_ipn_account.TestAccountCallback.test_user_is_deleted
-- test.component.test_ipn_account.TestAccountCallback.test_withdrawal_ipn
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_authorized_no_state_change
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_no_payment_or_expense
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_deleted_resource
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_error
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_gateway_connection_inactive
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_partial_refund
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_refunded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_expense_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_payment_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_pending_user_sends_confirmation_email
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_7002_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_recurring_invoice_checkout_succeeded_callback
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_email_changed
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_no_state_change
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_deleted
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token_multiple_connections
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_wepay_error
-- test.component.test_ipn_user.TestUserCallback.test_user_registered_callback_succeeded
-- test.component.test_ipn_user.TestUserCallback.test_user_undeleted_callback_failed
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_successfully
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_no_active_connections
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_one_connection
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_two_connections
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_inactive_connection
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_non_matching_system_id
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_successfully
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_no_cc_token_with_profile
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_successfully
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_pending_transaction_includes_fee
SELECT gateway_user.gateway_user_id AS gateway_user_gateway_user_id, gateway_user.gateway_name AS gateway_user_gateway_name, gateway_user.access_token AS gateway_user_access_token, gateway_user.access_token_expiry AS gateway_user_access_token_expiry, gateway_user.user_state AS gateway_user_user_state, gateway_user.email AS gateway_user_email, gateway_user.created_at AS gateway_user_created_at, gateway_user.updated_at AS gateway_user_updated_at, gateway_user.access_token_revoked AS gateway_user_access_token_revoked 
FROM gateway_user 
WHERE gateway_user.gateway_name = %s AND gateway_user.gateway_user_id = %s
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_email_changed
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_no_state_change
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_deleted
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token_multiple_connections
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_wepay_error
-- test.component.test_ipn_user.TestUserCallback.test_user_registered_callback_succeeded
-- test.component.test_ipn_user.TestUserCallback.test_user_undeleted_callback_failed
SELECT gateway_user.gateway_user_id AS gateway_user_gateway_user_id, gateway_user.gateway_name AS gateway_user_gateway_name, gateway_user.access_token AS gateway_user_access_token, gateway_user.access_token_expiry AS gateway_user_access_token_expiry, gateway_user.user_state AS gateway_user_user_state, gateway_user.email AS gateway_user_email, gateway_user.created_at AS gateway_user_created_at, gateway_user.updated_at AS gateway_user_updated_at, gateway_user.access_token_revoked AS gateway_user_access_token_revoked 
FROM gateway_user 
WHERE gateway_user.gateway_user_id = %s
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_already_authorized
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_client_id_mismatch_user
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_current_cc_token
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_error
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_invalid_expiry({},)
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_invalid_expiry({'expiry_month': '09'},)
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_invalid_expiry({'expiry_year': '2000'},)
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_invalid_expiry({'expiry_year': '00'},)
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_invalid_expiry({'expiry_month': 'xy', 'expiry_year': '2010'},)
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_invalid_expiry({'expiry_month': '06', 'expiry_year': 'xy'},)
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_multiple_profiles
-- test.component.test_cc_token.TestCCTokenCreate.test_cc_token_create_without_client_id
-- test.component.test_credit_card_type.TestCreditCardTypes.test_get_for_ca_connection
-- test.component.test_credit_card_type.TestCreditCardTypes.test_get_for_us_connection
-- test.component.test_credit_card_type.TestCreditCardTypes.test_get_using_admin_masterlock_token
-- test.component.test_gateway.TestGateway.test_search_connection
-- test.component.test_gateway.TestGateway.test_search_connection_forbidden({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_gateway.TestGateway.test_search_connection_forbidden({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_forbidden_invalid_system_id
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_successfully
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_using_client_masterlock_token
-- test.component.test_gateway_connection.TestDeleteGatewayConnection.test_delete_using_staff_masterlock_token
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_expired_last_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_bank_info_but_no_bank_connected
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_incoming_pending_amount
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_no_bank_connected_with_txns
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_outgoing_amount_only_no_next_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_overlap_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_staff_token
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_include
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_reserve_or_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_no_captured_withdrawal
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, True, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, True, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, False, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'}, False, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, True, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, True, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, False, False)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_tos_accepted_updated({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150}, False, True)
-- test.component.test_gateway_connection.TestUpdateGatewayConnection.test_update_without_tos_accepted_should_error
-- test.component.test_gateway_processor.TestNewUser.test_new_user_gets_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_active_system_with_different_email
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_gets_token_reactivated_and_new_connection
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_disabled_conn_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_get_reactivated
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_w_disabled_acct_not_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_conn_for_different_system_gets_new_conn
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_connection_on_system_doesnt_provision
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_pending_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_registered_user_with_secondary_email_doesnt_get_provisioned
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_account_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_1008_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_2004_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_currency_mismatch
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_empty_cc_token_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_empty_currency_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_empty_invoice_amount
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_empty_invoiceid_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incoming_payments_paused_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incorrect_invoice_amount
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invalid_cc_token_field
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invalid_gateway_id
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_invoice_already_paid
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_less_than_ninety_nine_cents_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_permission_denied
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_processing_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_unsupported_wepay_currency
-- test.component.test_ipn_account.TestAccountCallback.test_account_action_required_changes_user_state_to_registered
-- test.component.test_ipn_account.TestAccountCallback.test_account_activated
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_callback_succeeded
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_more_reasons
-- test.component.test_ipn_account.TestAccountCallback.test_account_deleted_with_reason
-- test.component.test_ipn_account.TestAccountCallback.test_account_inactive_callback
-- test.component.test_ipn_account.TestAccountCallback.test_account_update_currencies
-- test.component.test_ipn_account.TestAccountCallback.test_account_with_change_in_payments_status
-- test.component.test_ipn_account.TestAccountCallback.test_user_deleted_triggers_account_delete_callback
-- test.component.test_ipn_account.TestAccountCallback.test_user_is_deleted
-- test.component.test_ipn_account.TestAccountCallback.test_withdrawal_ipn
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_authorized_no_state_change
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_no_payment_or_expense
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_deleted_resource
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_error
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_gateway_connection_inactive
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_invalid_connection_id
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_partial_refund
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_refunded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_expense_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_payment_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_pending_user_sends_confirmation_email
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_7002_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_recurring_invoice_checkout_succeeded_callback
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_email_changed
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_no_state_change
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_deleted
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_user_revoked_token_multiple_connections
-- test.component.test_ipn_user.TestUserCallback.test_user_callback_wepay_error
-- test.component.test_ipn_user.TestUserCallback.test_user_registered_callback_succeeded
-- test.component.test_ipn_user.TestUserCallback.test_user_undeleted_callback_failed
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_different_system_id
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_inactive_connection
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_invalid_masterlock_token
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_missing_redirect_uri
-- test.component.test_kyc_token.TestCreateKYCUri.test_create_uri_successfully
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_expired_token
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_no_active_connections
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_one_connection
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_two_connections
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_inactive_connection
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_missing_required_fields
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_non_matching_system_id
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_successfully
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_forbidden_error_with_client
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_no_cc_token_with_profile
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_successfully
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_no_active_connection
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_no_transactions
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_successful
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_using_client_masterlock_token
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_using_staff_masterlock_token
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_failed_transactions
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_pending_transaction_includes_fee
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_bad_currency
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_bad_error_type
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_invoice_visible
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_matching_invoice_amount_and_currency
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_system_id_connection_id_mismatch
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_user_has_no_access_to_connection
-- test.component.test_transaction.TestTransactionResource.test_get_transaction_successful
-- test.component.test_withdrawal.TestWithdrawals.test_no_withdrawals
-- test.component.test_withdrawal.TestWithdrawals.test_show_withdrawals_history
SELECT gateway_user.gateway_user_id AS gateway_user_gateway_user_id, gateway_user.gateway_name AS gateway_user_gateway_name, gateway_user.access_token AS gateway_user_access_token, gateway_user.access_token_expiry AS gateway_user_access_token_expiry, gateway_user.user_state AS gateway_user_user_state, gateway_user.email AS gateway_user_email, gateway_user.created_at AS gateway_user_created_at, gateway_user.updated_at AS gateway_user_updated_at, gateway_user.access_token_revoked AS gateway_user_access_token_revoked 
FROM gateway_user 
WHERE gateway_user.gateway_user_id = %s AND gateway_user.gateway_name = %s
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_gets_token_reactivated_and_new_connection
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_disabled_conn_does_not_get_provisioned
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_get_reactivated
-- test.component.test_gateway_processor.TestReProvisionExistingUser.test_deleted_user_with_secondary_email_w_disabled_acct_not_provisioned
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_expired_token
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_no_active_connections
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_one_connection
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_two_connections
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_inactive_connection
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_missing_required_fields
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_non_matching_system_id
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_successfully
SELECT kyc_email_token.token AS kyc_email_token_token, kyc_email_token.gateway_name AS kyc_email_token_gateway_name, kyc_email_token.gateway_user_id AS kyc_email_token_gateway_user_id, kyc_email_token.created_at AS kyc_email_token_created_at 
FROM kyc_email_token 
WHERE %s = kyc_email_token.gateway_name AND %s = kyc_email_token.gateway_user_id
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_expired_token
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_invalid_token
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_no_active_connections
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_one_connection
-- test.component.test_kyc_token.TestReturnTokenDetails.test_return_token_details_successfully_two_connections
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_inactive_connection
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_invalid_token
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_non_matching_system_id
-- test.component.test_kyc_token.TestTokenCreateKYCUri.test_token_create_uri_successfully
SELECT kyc_email_token.token AS kyc_email_token_token, kyc_email_token.gateway_name AS kyc_email_token_gateway_name, kyc_email_token.gateway_user_id AS kyc_email_token_gateway_user_id, kyc_email_token.created_at AS kyc_email_token_created_at 
FROM kyc_email_token 
WHERE kyc_email_token.token = %s AND kyc_email_token.created_at >= %s
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_account_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_1008_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_2004_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incoming_payments_paused_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_processing_error
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
SELECT transaction.id AS transaction_id, transaction.system_id AS transaction_system_id, transaction.user_id AS transaction_user_id, transaction.user_level AS transaction_user_level, transaction.gateway_connection_id AS transaction_gateway_connection_id, transaction.reference_number AS transaction_reference_number, transaction.created_at AS transaction_created_at, transaction.amount AS transaction_amount, transaction.currency AS transaction_currency, transaction.credit_card_type AS transaction_credit_card_type, transaction.updated_at AS transaction_updated_at, transaction.status AS transaction_status, transaction.expense_id AS transaction_expense_id, transaction.invoice_id AS transaction_invoice_id, transaction.payment_id AS transaction_payment_id, transaction.profile_id AS transaction_profile_id 
FROM transaction
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_expired_last_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_bank_info_but_no_bank_connected
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_incoming_pending_amount
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_no_bank_connected_with_txns
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_outgoing_amount_only_no_next_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_reserve_overlap_and_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_with_staff_token
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_include
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_get_without_reserve_or_withdrawal
-- test.component.test_gateway_connection.TestGetGatewayConnection.test_no_captured_withdrawal
SELECT transaction.id AS transaction_id, transaction.system_id AS transaction_system_id, transaction.user_id AS transaction_user_id, transaction.user_level AS transaction_user_level, transaction.gateway_connection_id AS transaction_gateway_connection_id, transaction.reference_number AS transaction_reference_number, transaction.created_at AS transaction_created_at, transaction.amount AS transaction_amount, transaction.currency AS transaction_currency, transaction.credit_card_type AS transaction_credit_card_type, transaction.updated_at AS transaction_updated_at, transaction.status AS transaction_status, transaction.expense_id AS transaction_expense_id, transaction.invoice_id AS transaction_invoice_id, transaction.payment_id AS transaction_payment_id, transaction.profile_id AS transaction_profile_id 
FROM transaction 
WHERE %s = transaction.gateway_connection_id
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_authorized_no_state_change
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_no_payment_or_expense
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_deleted_resource
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_error
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_gateway_connection_inactive
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_partial_refund
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_refunded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_expense_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_payment_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_pending_user_sends_confirmation_email
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_7002_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_recurring_invoice_checkout_succeeded_callback
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_successfully
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_successful
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_pending_transaction_includes_fee
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_transaction.TestTransactionResource.test_get_transaction_successful
SELECT transaction.id AS transaction_id, transaction.system_id AS transaction_system_id, transaction.user_id AS transaction_user_id, transaction.user_level AS transaction_user_level, transaction.gateway_connection_id AS transaction_gateway_connection_id, transaction.reference_number AS transaction_reference_number, transaction.created_at AS transaction_created_at, transaction.amount AS transaction_amount, transaction.currency AS transaction_currency, transaction.credit_card_type AS transaction_credit_card_type, transaction.updated_at AS transaction_updated_at, transaction.status AS transaction_status, transaction.expense_id AS transaction_expense_id, transaction.invoice_id AS transaction_invoice_id, transaction.payment_id AS transaction_payment_id, transaction.profile_id AS transaction_profile_id 
FROM transaction 
WHERE transaction.id = %s
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_authorized_no_state_change
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_no_payment_or_expense
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_deleted_resource
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_error
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_gateway_connection_inactive
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_partial_refund
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_refunded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_expense_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_payment_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_pending_user_sends_confirmation_email
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_7002_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_recurring_invoice_checkout_succeeded_callback
SELECT transaction.id AS transaction_id, transaction.system_id AS transaction_system_id, transaction.user_id AS transaction_user_id, transaction.user_level AS transaction_user_level, transaction.gateway_connection_id AS transaction_gateway_connection_id, transaction.reference_number AS transaction_reference_number, transaction.created_at AS transaction_created_at, transaction.amount AS transaction_amount, transaction.currency AS transaction_currency, transaction.credit_card_type AS transaction_credit_card_type, transaction.updated_at AS transaction_updated_at, transaction.status AS transaction_status, transaction.expense_id AS transaction_expense_id, transaction.invoice_id AS transaction_invoice_id, transaction.payment_id AS transaction_payment_id, transaction.profile_id AS transaction_profile_id 
FROM transaction 
WHERE transaction.reference_number = %s AND transaction.gateway_connection_id = %s
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_no_active_connection
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_no_transactions
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_successful
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_failed_transactions
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_pending_transaction_includes_fee
SELECT transaction.id AS transaction_id, transaction.system_id AS transaction_system_id, transaction.user_id AS transaction_user_id, transaction.user_level AS transaction_user_level, transaction.gateway_connection_id AS transaction_gateway_connection_id, transaction.reference_number AS transaction_reference_number, transaction.created_at AS transaction_created_at, transaction.amount AS transaction_amount, transaction.currency AS transaction_currency, transaction.credit_card_type AS transaction_credit_card_type, transaction.updated_at AS transaction_updated_at, transaction.status AS transaction_status, transaction.expense_id AS transaction_expense_id, transaction.invoice_id AS transaction_invoice_id, transaction.payment_id AS transaction_payment_id, transaction.profile_id AS transaction_profile_id 
FROM transaction INNER JOIN gateway_connection ON gateway_connection.id = transaction.gateway_connection_id 
WHERE gateway_connection.gateway_name = %s AND gateway_connection.system_id = %s
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_account_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_1008_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_bank_decline_2004_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_incoming_payments_paused_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_processing_error
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_successfully
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_successful
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_failed_transactions
-- test.component.test_transaction.TestShowTransactionsForSystem.test_show_transactions_with_pending_transaction_includes_fee
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_transaction.TestTransactionResource.test_create_transaction_error_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_transaction.TestTransactionResource.test_get_transaction_successful
SELECT transaction_error.transaction_id AS transaction_error_transaction_id, transaction_error.error_type AS transaction_error_error_type, transaction_error.error_code AS transaction_error_error_code, transaction_error.error_message AS transaction_error_error_message, transaction_error.created_at AS transaction_error_created_at 
FROM transaction_error 
WHERE transaction_error.transaction_id = %s
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'user_id': 1, 'masterlock_token': 'a1a2a3b4b5', 'role': 'admin', 'user_level': 3, 'system_id': '2', 'email': 'admin@email.com'},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'client', 'user_level': 0, 'system_id': '2', 'masterlock_token': 'b2b3b4b5b6', 'user_id': 100},)
-- test.component.test_invoice_payment.TestInvoicePayment.test_create_payment_successfully({'role': 'staff', 'user_level': 1, 'system_id': '2', 'masterlock_token': 'd3d4e5f6f7', 'user_id': 150},)
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_no_payment_or_expense
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_deleted_resource
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_failed_state_update_payment_error
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_gateway_connection_inactive
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_partial_refund
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_refunded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_expense_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_callback_evolve_payment_already_exists
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_pending_user_sends_confirmation_email
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_7002_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_checkout_succeeded_send_confirmation_error_from_wepay
-- test.component.test_ipn_checkout.TestCheckoutCallback.test_recurring_invoice_checkout_succeeded_callback
-- test.component.test_recurring_invoice_payment.TestRecurringInvoicePayment.test_create_payment_successfully
-- test.component.test_transaction.TestTransactionResource.test_get_transaction_successful
SELECT transaction_history.id AS transaction_history_id, transaction_history.transaction_id AS transaction_history_transaction_id, transaction_history.status AS transaction_history_status, transaction_history.created_at AS transaction_history_created_at 
FROM transaction_history 
WHERE %s = transaction_history.transaction_id
-- test.component.test_withdrawal.TestWithdrawals.test_no_withdrawals
-- test.component.test_withdrawal.TestWithdrawals.test_show_withdrawals_history
SELECT withdrawal_history.id AS withdrawal_history_id, withdrawal_history.withdrawal_id AS withdrawal_history_withdrawal_id, withdrawal_history.account_id AS withdrawal_history_account_id, withdrawal_history.status AS withdrawal_history_status, withdrawal_history.amount AS withdrawal_history_amount, withdrawal_history.currency AS withdrawal_history_currency, withdrawal_history.note AS withdrawal_history_note, withdrawal_history.recipient_confirmed AS withdrawal_history_recipient_confirmed, withdrawal_history.type AS withdrawal_history_type, withdrawal_history.created_at AS withdrawal_history_created_at, withdrawal_history.wepay_create_time AS withdrawal_history_wepay_create_time, withdrawal_history.capture_time AS withdrawal_history_capture_time 
FROM withdrawal_history INNER JOIN (SELECT gateway_connection.id AS gateway_connection_id, gateway_connection.gateway_name AS gateway_connection_gateway_name, gateway_connection.gateway_user_id AS gateway_connection_gateway_user_id, gateway_connection.system_id AS gateway_connection_system_id, gateway_connection.created_at AS gateway_connection_created_at, gateway_connection.deleted_at AS gateway_connection_deleted_at, gateway_connection.country AS gateway_connection_country, gateway_connection_fbpay.gateway_connection_id AS gateway_connection_fbpay_gateway_connection_id, gateway_connection_fbpay.account_id AS gateway_connection_fbpay_account_id, gateway_connection_fbpay.account_state AS gateway_connection_fbpay_account_state, gateway_connection_fbpay.incoming_payments_status AS gateway_connection_fbpay_incoming_payments_status, gateway_connection_fbpay.tos_accepted AS gateway_connection_fbpay_tos_accepted 
FROM gateway_connection INNER JOIN gateway_connection_fbpay ON gateway_connection.id = gateway_connection_fbpay.gateway_connection_id) AS anon_1 ON anon_1.gateway_connection_fbpay_account_id = withdrawal_history.account_id INNER JOIN gateway_connection ON gateway_connection.id = anon_1.gateway_connection_fbpay_gateway_connection_id 
WHERE gateway_connection.gateway_name = %s AND gateway_connection.system_id = %s ORDER BY withdrawal_history.created_at DESC, withdrawal_history.id DESC
-- test.component.test_ipn_account.TestAccountCallback.test_withdrawal_ipn
SELECT withdrawal_history.id AS withdrawal_history_id, withdrawal_history.withdrawal_id AS withdrawal_history_withdrawal_id, withdrawal_history.account_id AS withdrawal_history_account_id, withdrawal_history.status AS withdrawal_history_status, withdrawal_history.amount AS withdrawal_history_amount, withdrawal_history.currency AS withdrawal_history_currency, withdrawal_history.note AS withdrawal_history_note, withdrawal_history.recipient_confirmed AS withdrawal_history_recipient_confirmed, withdrawal_history.type AS withdrawal_history_type, withdrawal_history.created_at AS withdrawal_history_created_at, withdrawal_history.wepay_create_time AS withdrawal_history_wepay_create_time, withdrawal_history.capture_time AS withdrawal_history_capture_time 
FROM withdrawal_history ORDER BY withdrawal_history.id ASC

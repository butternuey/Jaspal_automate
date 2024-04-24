*** Variables ***
#URL_WEBSITE
${URL}    https://mcstaging-2-4.mistymynx.com/

#WEB_LOGO
${WEB_LOGO_MM}    css=#html-body > div.page-wrapper > header > div.container > div > a > img

#HOMEPAGE
${HOMEPAGE_SEARCH_PRODUCT_ICON}    xpath=//div[@class='desktop-search-btn']
${HOMEPAGE_SEARCH_PRODUCT_FIELD}    css=#search
${HOMEPAGE_SEARCH_PRODUCT_CANCEL}    css=#search_mini_form > div.actions

#MINI_CART
${MINI_CART_ICON}    xpath=//div[@data-block="minicart"]
${MINI_CART_POPUP}    id=ui-id-36
${MINI_CART_TEXT}    My Bag
${MINI_CART_CHECKOUT_BUTTON}    xpath=//button[@id="top-cart-btn-checkout"]

#VIEW_MY_BAG
${VIEW_MY_BAG_BUTTON}    css=#minicart-content-wrapper > div.block-content > div.actions.cart-btn-group > div.secondary > a > button
${VIEW_MY_BAG_PAGE_TEXT}    My Bag
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL}    css=#shopping-cart-table > tbody > tr > td > div
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_NAME}    css=#shopping-cart-table > tbody > tr > td > div > strong
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_NORMAL_PRICE}    css=#shopping-cart-table > tbody > tr > td > div > div.col.subtotal > span.normal-price.special-price > span > span
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_OLD_PRICE}    css=#shopping-cart-table > tbody > tr > td > div > div.col.subtotal > span.old-price
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_COLOR}    css=#shopping-cart-table > tbody > tr > td > div > ul > li:nth-child(1)
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_SIZE}    css=#shopping-cart-table > tbody > tr > td > div > ul > li:nth-child(2)
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_INPUT_QTY}    css=#cart-273622-qty
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_DECREASE_QTY}    css=#qty_change > span.decreaseQty
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_INCREASE_QTY}    css=#qty_change > span.increaseQty
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST}    css=#customer-login-link
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}    css=#shopping-cart-table > tbody > tr > td > div > div.item-actions > div > div > a.action.action-delete
${VIEW_MY_BAG_GIFT_BOX_SECTION}    css=#maincontent > div.columns > div > div.cart-container > div.group-cart-section > div
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION}    css=#maincontent > div.columns > div > div.cart-container > div.cart-summary
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_SUBTOTAL}    css=#cart-totals > div > table > tbody > tr.totals.sub > th
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL}    css=#cart-totals > div > table > tbody > tr.grand.totals > td
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION}    css=#block-discount > div.title.coupon-title
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_EXPAND}    css=#block-discount
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_PROMOTION_CODE_FIELD}    css=#coupon_code
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_APPLY_BUTTON}    css=#discount-coupon-form > div > div.col-xs-4.text-center > div > div > button
${VIEW_MY_BAG_CHECKOUT_BUTTON}    css=#maincontent > div.columns > div > div.cart-container > div.cart-summary > ul > li > button

#Product
${PRODUCT_1}    Mynx Love Tee
${PRODUCT_2}    Logo Tape Pullover

#PLP
${PLP_PRODUCT_1}    css=#maincontent > div.columns > div > div.search.results > div.products.wrapper.grid.products-grid > ol > li > div

#SHIPPING PAGE
${SHIPPING_ORDER_INFORMATION_SECTION}    xpath=//aside[contains(@class,"modal-custom opc-sidebar opc-summary-wrapper")]
${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION}    xpath=//div[@class="block items-in-cart items-in-bag"]//strong[@role="heading"]


#REVIEW ORDER PAGE
${REVIEW_ORDER_SHIPPING_EDIT_BUTTON}    xpath=//div[@class="shipping-information"]//div[@class="ship-to"]//div[@class="shipping-information-title"]//button[@class="action action-edit"]

#FOOTER
${FOOTER_MY_ACCOUNT_MY_ORDERS}    xpath=//div[@class="footer-menus"]/div[@class="order-link"]/a/span[text()='My Orders']    
${FOOTER_MY_ACCOUNT_MY_CREDITS}    xpath=//div[@class="footer-menus"]//a[@class="pagebuilder-button-link"]/span[text()='My Credits']
${FOOTER_ABOUT_US_WHO_WE_ARE}    xpath=//div[@class="footer-menus"]//a[@class="pagebuilder-button-link"]/span[text()='Who We Are']
${FOOTER_ABOUT_US_WORK_WITH_US}    xpath=//div[@class="footer-menus"]//a[@class="pagebuilder-button-link"]/span[text()='Work With Us']
${FOOTER_ABOUT_US_JASPAL_GROUP}    xpath=//div[@class="footer-menus"]//a[@class="pagebuilder-button-link"]/span[text()='Jaspal Group']
${FOOTER_ABOUT_US_JPS_CLUB}    xpath=//div[@class="footer-menus"]//a[@class="pagebuilder-button-link"]/span[text()='JPS CLUB']
${FOOTER_CUSTOMER_SERVICE_FAQS}    xpath=//div[@class="footer-menus"]//a[@class="pagebuilder-button-link"]/span[text()='FAQs']
${FOOTER_CUSTOMER_SERVICE_FIND_A_STORE}    xpath=//div[@class="footer-menus"]//a[@class="pagebuilder-button-link"]/span[text()='Find a Store']
${FOOTER_CUSTOMER_SERVICE_RETURN_&_EXCHANGES}    xpath=//div[@class="footer-menus"]//a[@class="pagebuilder-button-link"]/span[text()='Returns & Exchanges']
${FOOTER_CUSTOMER_SERVICE_CONTACT_US}    xpath=//div[@class="footer-menus"]//a[@class="pagebuilder-button-link"]/span[text()='Contact Us']
${FOOTER_JOIN_THE_JASPAL_COMMUNITY}    xpath=//div[@class="footer-newsletter-content"]//div[@class="block newsletter"]//strong[text()='Join the Jaspal community']
${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL}    xpath=//div[@class="field newsletter"]//div[@class="control"]//input[@id="newsletter"]
${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}    xpath=//button[@class="action subscribe primary"]
${FOOTER_PDPA_CHECKBOX}    xpath=//input[@id="newsletter-agreement"]
${FOOTER_PDPA_LINK}    xpath=//div[@class="field custom-checkbox newsletter-agreement required"]/label/span/a[text()='PDPA']
${FOOTER_LANGUAGE}    xpath=//div[@class="footer-links-content links"]//div[@id="switcher-language-nav"]/strong/span[text()='Language']
${FOOTER_CURRENCY}    xpath=//div[@class="footer-links-content links"]//div[@id="switcher-currency-nav"]/strong/span[text()='Currency']
${FOOTER_SOCIAL_FACEBOOK_ICON}    xpath=//div[@class="social_icons"]/ul/li/a[@title="Facebook"]
${FOOTER_SOCIAL_IG_ICON}    xpath=//div[@class="social_icons"]/ul/li/a[@title="Instagram"]
${FOOTER_SOCIAL_LINE_ICON}    xpath=//div[@class="social_icons"]/ul/li/a[@title="Line"]
${FOOTER_SOCIAL_YOUTUBE_ICON}    xpath=//div[@class="social_icons"]/ul/li/a[@title="Youtube"]

#MY_ORDER_GUEST
${MY_ORDER_GUEST_ORDER_REFERENCE_NUMBER_FIELD}    xpath=//div[@class="control"]//input[@name="oar_order_id"]
${MY_ORDER_GUEST_EMAIL_ADDRESS_FIELD}    xpath=//div[@class="control"]//input[@name="oar_email"]
${MY_ORDER_GUEST_BILLING_LAST_NAME_FIELD}    xpath=//div[@class="control"]//input[@name="oar_billing_lastname"]
${MY_ORDER_GUEST_SEARCH_BUTTON}    xpath=//div[@class="actions-toolbar row"]//button[@class="action submit primary btn btn--primary"]


#LOGIN
${LOGIN_ICON}    css=#html-body > div.page-wrapper > header > div.container > div > div.page-header__right > div.header-links-wrapper.cps-login.text-center
${LOGIN_MENU}    css=#html-body > div.page-wrapper > header > div.container > div > div.page-header__right > div.header-links-wrapper.cps-login.text-center.active > div.header-links-menu.panel.header.arrow_box > ul > li.authorization-link
${LOGIN_POPUP}    css=#html-body > div.modals-wrapper > aside.modal-slide.customer-popup.login-popup._inner-scroll._show > div.modal-inner-wrap
${LOGIN_EMAIL_TEXTBOX}    css=#email-login
${LOGIN_PASSWORD_TEXTBOX}    css=#pass-login
${LOGIN_BUTTON}    css=#send2-login
${NEED_AND_ACCOUNT?_REGISTER NOW!}   css=#customer-popup-registration
${LOGIN_EYE_TOGGLE}    css=#customer-popup-login-form > fieldset > div.field.password.form-group.required.margin-bottom-5 > div > span
${LOGIN_FORGOT_PASSWORD}    css=#customer-popup-login-form > fieldset > div.field.forgot-password-link
${LOGIN_CLOSE_POPUP_BUTTON}    css=#html-body > div.modals-wrapper > aside.modal-slide.customer-popup.login-popup._inner-scroll._show > div.modal-inner-wrap > header > button
${LOGIN_FACEBOOK}    css=#customer-popup-login-form > fieldset > div.social-links > a:nth-child(1)
${LOGIN_GOOGLE}    css=#customer-popup-login-form > fieldset > div.social-links > a:nth-child(2)
${LOGIN_EMAIL}
${LOGIN_PASSWORD}

#LOGIN_ERROR
${LOGIN_ERROR_EMAIL}    css=#email-login-error
${LOGIN_ERROR_EMAIL_EMPTY_TEXT}    Please enter your email address.
${LOGIN_ERROR_EMAIL_INVALID_TEXT}    Please enter a valid email address (Ex: sally@domain.com)    
${LOGIN_ERROR_PASSWORD}    css=#pass-login-error
${LOGIN_EROR_PASSWORD_EMPTY_TEXT}    Please enter your password.


#LOGOUT
${LOGOUT_MENU}    css=#html-body > div.page-wrapper > header > div.container > div > div.page-header__right > div.header-links-wrapper.cps-login.text-center.active > div.header-links-menu.panel.header.arrow_box > ul > li.authorization-link



#CREATE_ACCOUNT
${CREATE_ACCOUNT_MENU}    css=#html-body > div.page-wrapper > header > div.container > div > div.page-header__right > div.header-links-wrapper.cps-login.text-center.active > div.header-links-menu.panel.header.arrow_box > ul > li:nth-child(3)
${CREATE_ACCOUNT_POPUP}    css=#html-body > div.modals-wrapper > aside.modal-slide.customer-popup.register-popup._inner-scroll._show > div.modal-inner-wrap
${CREATE_ACCOUNT_FIRSTNAME_TEXTBOX}    css=#firstname
${CREATE_ACCOUNT_LASTNAME_TEXTBOX}    css=#lastname
${CREATE_ACCOUNT_EMAIL_TEXTBOX}    css=#popup-email_address
${CREATE_ACCOUNT_PASSWORD_TEXTBOX}    css=#password
${CREATE_ACCOUNT_PASSWORD_TOGGLE}    css=#customer-popup-form-register > fieldset.fieldset.create.account > div:nth-child(3) > div > span
${CREATE_ACCOUNT_RE_ENTER_PASSWORD_TEXTBOX}    css=#password-confirmation
${CREATE_ACCOUNT_RE_ENTER_PASSWORD_TOGGLE}    css=#customer-popup-form-register > fieldset.fieldset.create.account > div.field.password.confirmation.required > div > span
${CREATE_ACCOUNT_DOB_TEXTBOX}    css=#my_dob
${CREATE_ACCOUNT_DOB_ICON}    xpath=//span[@class="calendar-icon"]
${CREATE_ACCOUNT_DOB_MONTH_DROPDOWN}    xpath=//select[@class='ui-datepicker-month']
${CREATE_ACCOUNT_DOB_YEAR_DROPDOWN}    xpath=//*[@class='ui-datepicker-year']
${CREATE_ACCOUNT_DOB_DATE}    css=#ui-datepicker-div > table > tbody > tr:nth-child(3) > td:nth-child(4) > a
${CREATE_ACCOUNT_GENDER_TO_EXPAND_LIST}    xpath=//div[@class="control custom-select"]
${CREATE_ACCOUNT_GENDER_DROPDOWN}    css=#gender
${CREATE_ACCOUNT_ISD_CODE_TEXTBOX}    css=#isd_code
${CREATE_ACCOUNT_PHONENUMBER_TEXTBOX}    css=#phone_number
${CREATE_ACCOUNT_Subscribe to our newsletter!_CHECKBOX}    css=#is_subscribed
${CREATE_ACCOUNT_TC_PDPA_CHECKBOX}    css=#terms_conditions
${CREATE_ACCOUNT_Terms & Conditions}    css=#customer-popup-form-register > fieldset.fieldset.create.account > div.confirmation.custom-checkbox.required.margin-bottom-20.control > label > span:nth-child(1) > a:nth-child(1)
${CREATE_ACCOUNT_PDPA}    css=#customer-popup-form-register > fieldset.fieldset.create.account > div.confirmation.custom-checkbox.required.margin-bottom-20.control > label > span:nth-child(1) > a:nth-child(2)
${CREATE_ACCOUNT_Privacy Policy}    css=#customer-popup-form-register > fieldset.fieldset.create.account > div.confirmation.custom-checkbox.required.margin-bottom-20.control > label > span:nth-child(1) > a:nth-child(3)
${CREATE_ACCOUNT_BUTTON}    css=#customer-popup-form-register > div:nth-child(6) > div.primary.margin-bottom-5.form-group > button
${CREATE_ACCOUNT_Already Have an Account? Log In Here.}    css=#customer-popup-sign-in > span
${CREATE_ACCOUNT_FACEBOOK}    css=#customer-popup-form-register > div.social-links > a:nth-child(1)
${CREATE_ACCOUNT_GOOGLE}    css=#customer-popup-form-register > div.social-links > a:nth-child(2)
${CREATE_ACCOUNT_CLOSE_POPUP}    css=#html-body > div.modals-wrapper > aside.modal-slide.customer-popup.register-popup._inner-scroll._show > div.modal-inner-wrap > header > button
${CREATE_ACCOUNT_CHECK_EMAIL_COMFIRM_POPUP}    css=#html-body > div.modals-wrapper > aside.modal-popup.confirm._show > div.modal-inner-wrap
${CREATE_ACCOUNT_CHECK_EMAIL_COMFIRM_TEXT}    You're almost there!

#ADMIN
${ADMIN_MM_URL}    https://mcstaging-2-4.jaspal.com/admin/
${ADMIN_CUSTOMER_MENU}    css=#menu-magento-customer-customer > a
${ADMIN_CUSTOMER_ALL_CUSTOMER_OPTION_POPUP}    css=#menu-magento-customer-customer > div
${ADMIN_CUSTOMER_ALL_CUSTOMER}    css=#menu-magento-customer-customer > div > ul > li.item-customer-manage.level-1 > a
${ADMIN_CUSTOMER_ALL_CUSTOMER_SEARCH_FIELD}    css=#fulltext
${ADMIN_CUSTOMER_ALL_CUSTOMER_SEARCH_ICON}    css=#container > div > div.admin__data-grid-header > div:nth-child(1) > div.data-grid-search-control-wrap > button
${ADMIN_CUSTOMER_ALL_CUSTOMER_EDIT}    css=#container > div > div.admin__data-grid-wrap > table > tbody > tr:nth-child(2) > td.data-grid-actions-cell
${ADMIN_CUSTOMER_ALL_CUSTOMER_DELETE_CUSTOMER_BUTTON}    xpath=//div[@class="page-actions-buttons"]/button[@id="customer-edit-delete-button"][@title="Delete Customer"]
${ADMIN_CUSTOMER_ALL_CUSTOMER_DELETE_CUSTOMER_POPUP}    xpath=//div[contains(@id, "modal-content-")]/div[text()='Are you sure you want to do this?']
${ADMIN_CUSTOMER_ALL_CUSTOMER_DELETE_CUSTOMER_POPUP_CLOSE_ICON}    css=#html-body > div.modals-wrapper > aside.modal-popup.confirm._show > div.modal-inner-wrap > header > button
${ADMIN_CUSTOMER_ALL_CUSTOMER_DELETE_CUSTOMER_POPUP_OK_BUTTON}    xpath=//div[contains(text(), 'Are you sure you want to do this?')]/ancestor::div[@class='modal-inner-wrap']//button[contains(@class, 'action-primary') and contains(@class, 'action-accept')]
${ADMIN_CUSTOMER_ALL_CUSTOMER_DELETE_CUSTOMER_POPUP_CANCEL_BUTTON}    css=#html-body > div.modals-wrapper > aside.modal-popup.confirm._show > div.modal-inner-wrap > footer > button.action-secondary.action-dismiss
${ADMIN_CUSTOMER_ALL_CUSTOMER_DELETE_SUCCESS_TEXT}    You deleted the customer.







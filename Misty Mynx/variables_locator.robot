*** Variables ***
#URL_WEBSITE
${URL}    https://mcstaging-2-4.mistymynx.com/

#WEB_LOGO
${WEB_LOGO_MM}    css=#html-body > div.page-wrapper > header > div.container > div > a > img

#HOMEPAGE
${HOMEPAGE_SEARCH_PRODUCT_ICON}    xpath=//div[@class='desktop-search-btn']
${HOMEPAGE_SEARCH_PRODUCT_FIELD}    css=#search
${HOMEPAGE_SEARCH_PRODUCT_CANCEL}    css=#search_mini_form > div.actions
${HOMEPAGE_SCROLL_TO_TOP_BUTTON}    xpath=//div[@class="scroll-top"]

#MINI_CART
${MINI_CART_ICON}    xpath=//div[@data-block="minicart"]
${MINI_CART_POPUP}    xpath=//div[@class="block block-minicart ui-dialog-content ui-widget-content"]
${MINI_CART_INCREASE}    xpath=//div[@class="qty-div"]//div[@class="qty-btn more"]
${MINI_CART_DECREASE}    xpath=//div[@class="qty-div"]//div[@class="qty-btn less"]
${MINI_CART_UPDATE_BUTTON}    xpath=//button[@title="Update"]
${MINI_CART_DELETE_ICON}    xpath=//div[@class="product actions"]//div[@class="secondary"]//a[@class="action delete"]
${MINI_CART_DELETE_POPUP}    xpath=//div[@class="modal-inner-wrap"]//div[@class="modal-content"]//div[text()='Are you sure you want to remove this item from your shopping bag?']
${MINI_CART_DELETE_POPUP_OK_BUTTON}    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
${MINI_CART_DELETE_POPUP_CANCEL_BUTTON}    xpath=//footer[@class="modal-footer"]//button[@class="action-secondary action-dismiss"]    
${MINI_CART_DELETE_POPUP_CLOSE_BUTTON}    xpath=//aside[@class="modal-popup confirm _show"]//div[@class="modal-inner-wrap"]//button[@class="action-close"]
${MINI_CART_WISHLIST_ICON}    xpath=//div[@class="product actions"]//div[@class="primary"]//button[@class="button-wishlist-cart action towishlist add-to-wishlist"]
${MINI_CART_VIEW_MY_BAG_ICON}    xpath=//button[@class=" btn btn--secondary"]
${MINI_CART_CHECKOUT_BUTTON}    xpath=//button[@id="top-cart-btn-checkout"]

#VIEW_MY_BAG
${VIEW_MY_BAG_BUTTON}    css=#minicart-content-wrapper > div.block-content > div.actions.cart-btn-group > div.secondary > a > button
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL}    css=#shopping-cart-table > tbody > tr > td > div
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_NAME}    css=#shopping-cart-table > tbody > tr > td > div > strong
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_NORMAL_PRICE}    css=#shopping-cart-table > tbody > tr > td > div > div.col.subtotal > span.normal-price.special-price > span > span
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_OLD_PRICE}    css=#shopping-cart-table > tbody > tr > td > div > div.col.subtotal > span.old-price
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_COLOR}    css=#shopping-cart-table > tbody > tr > td > div > ul > li:nth-child(1)
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_SIZE}    css=#shopping-cart-table > tbody > tr > td > div > ul > li:nth-child(2)
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_INPUT_QTY}    css=#cart-273622-qty
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_DECREASE_QTY}    css=#qty_change > span.decreaseQty
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_INCREASE_QTY}    css=#qty_change > span.increaseQty
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST}    xpath=//table[@id="shopping-cart-table"]//div[@class="actions-toolbar"]//a[@id="customer-login-link"]
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER}    xpath=//div[@class="actions-toolbar"]//div[@class="split button wishlist"]//button[@class="action toggle change"]
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_POPUP}    xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),"success")]
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_MASSAGE}    xpath=//div[@class="modal-content"]//p[@class="message success "]
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_POPUP_OK_BUTTON}    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}    xpath=//table[@id="shopping-cart-table"]//div[@class="actions-toolbar"]//a[@class="action action-delete"]
${VIEW_MY_BAG_GIFT_BOX_SECTION}    css=#maincontent > div.columns > div > div.cart-container > div.group-cart-section > div
${VIEW_MY_BAG_FREE_GIFT_SECTION}    xpath=//div[@class="ampromo-items-add"]//a[text()="free gift "]
${VIEW_MY_BAG_FREE_GIFT_POPUP}    xpath=//div[@class="ampromo-items-content gifting-popup-content"]//div[@class="page-title-wrapper"]//h1[@class="page-title"]
${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}    xpath=//div[@data-role="ampromo-popup-hide"]
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION}    css=#maincontent > div.columns > div > div.cart-container > div.cart-summary
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_SUBTOTAL}    css=#cart-totals > div > table > tbody > tr.totals.sub > th
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_SUBTOTAL_VALUE}    xpath=//td[@class="amount"]//span[@data-th="Subtotal"]
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL}    css=#cart-totals > div > table > tbody > tr.grand.totals > td
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL_VALUE}    xpath=//tr[@class="grand totals"]//td[@data-th="Total"]//strong//span[@class="price"]
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_DISCOUNT}    xpath=//tr[@class="totals total_point"]//th[text()="Promotion Discount"]
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_DISCOUNT_VALUE}    xpath=//td[@class="amount"]//span[@data-th="Subtotal"]
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION}    xpath=//div[@id="block-discount"]//div[@class="title coupon-title"]//strong[@id="block-discount-heading"]
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_EXPAND}    css=#block-discount
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_PROMOTION_CODE_FIELD}    css=#coupon_code
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_REMOVE_BUTTON}    xpath=//div[@class="primary"]//button[@class="action cancel primary action-cancel"]//span[contains(text(),"Remove")]
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_APPLY_BUTTON}    css=#discount-coupon-form > div > div.col-xs-4.text-center > div > div > button
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_PROMO_CODE_TAG}    xpath=//div[@class="field  discount-wrapper"]//label[@for="discount-code"]//span[@class="applied-code"]
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_PROMO_CODE_DISCOUNT}    xpath=//div[@class="field  discount-wrapper"]//label[@for="discount-code"]//span[@class="coupon-price"]
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SUCCESS_POPUP}    xpath=//aside[@class="modal-popup messages _show"]//header[@class="modal-header"]//h1[@class="modal-title"][contains(text(),"success")]    
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SUCCESS_MASSEGE}    xpath=//p[@class="message success "]//span[text()="We've successfully applied your Promo Code."]
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SUCCESS_OK_BUTTTON}    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]//span[text()="OK"]
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SUCCESS_CLOSE_BUTTTON}    xpath=//aside[@class="modal-popup messages _show"]//header[@class="modal-header"]//button[@data-role="closeBtn"]//span[text()="Close"]
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_REMOVE_SUCCESS_POPUP}    xpath=//aside[@class="modal-popup messages _show"]//header[@class="modal-header"]//h1[@class="modal-title"][contains(text(),"success")] 
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_REMOVE_SUCCESS_MASSEGE}    xpath=//aside[@class="modal-popup messages _show"]//p[@class="message success "]//span[text()="We've successfully removed your Promo Code."]   
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_REMOVE_SUCCESS_OK_BUTTTON}    xpath=class="action-primary action-accept"
${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_REMOVE_SUCCESS_CLOSE_BUTTTON}    xpath=//aside[@class="modal-popup messages _show"]//header[@class="modal-header"]//button[@data-role="closeBtn"]//span[text()="Close"] 
${VIEW_MY_BAG_CHECKOUT_BUTTON}    css=#maincontent > div.columns > div > div.cart-container > div.cart-summary > ul > li > button

#PLP
${PLP_PRODUCT_1}    css=#maincontent > div.columns > div > div.search.results > div.products.wrapper.grid.products-grid > ol > li > div

#SHIPPING PAGE
${SHIPPING_LOGIN_LINK}    xpath=//div[@class="incentive-message"]//div[@class="checkout-incentive-message"]//a[@id="customer-login-link"]
${SHIPPING_ORDER_INFORMATION_SECTION}    xpath=//aside[contains(@class,"modal-custom opc-sidebar opc-summary-wrapper")]
${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION}    xpath=//div[@class="block items-in-cart items-in-bag"]//strong[@role="heading"]
${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_BUTTON}    xpath=//div[@id="checkout-step-shipping"]//div[@class="action-for-address"]//button[@class="action action-show-popup"]//span[text()='Add New Address']
${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_POPUP}    xpath=//div[@class="modal-inner-wrap"]//header[@class="modal-header"]//h1[contains(text(),'Shipping Address')]
${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_FIRST_NAME_FIELD}    xpath=//div[@name="shippingAddress.firstname"]//input[@name="firstname"]
${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_LAST_NAME_FIELD}    xpath=//div[@name="shippingAddress.lastname"]//input[@name="lastname"]
${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_COUNTRY_FIELD}    xpath=//div[@name="shippingAddress.country_id"]
${SHIPPING_SHIPPING_SECTION_ADD_NEW_HOUSE_NUMBER_FIELD}    xpath=//div[@name="shippingAddress.custom_attributes.house_number"]//input[@name="custom_attributes[house_number]"]
${SHIPPING_SHIPPING_SECTION_ADD_NEW_BUIDING_FIELD}    xpath=//div[@name="shippingAddress.custom_attributes.building"]//input[@name="custom_attributes[building]"]
${SHIPPING_SHIPPING_SECTION_ADD_NEW_FLOOR_FIELD}    xpath=//div[@name="shippingAddress.custom_attributes.floor"]//input[@name="custom_attributes[floor]"]
${SHIPPING_SHIPPING_SECTION_ADD_NEW_ALLEY/ROAD_FIELD}    xpath=//div[@name="shippingAddress.street.0"]//input[@name="street[0]"]
${SHIPPING_SHIPPING_SECTION_ADD_NEW_PHONE_NUMBER_FIELD}    xpath=//div[@name="shippingAddress.telephone"]//input[@name="telephone"]
${SHIPPING_SHIPPING_SECTION_SELECT_FROM_ADDRESS_BOOK_BUTTON}    xpath=//div[@id="checkout-step-shipping"]//div[@class="action-for-address"]//button[@class="action action-show-popup"]//span[text()='Select From Address Book']
${SHIPPING_SHIPPING_SECTION_SELECT_FROM_ADDRESS_BOOK_POPUP}    xpath=//div[@class="modal-inner-wrap"]//header[@class="modal-header"]//h1[contains(text(),"Please Select Address")]
${SHIPPING_SHIPPING_SECTION_SELECT_FROM_ADDRESS_BOOK_CLOSE_ICON}    xpath=//aside[@class="modal-popup customer-popup forgot-password-popup _inner-scroll"]//h1[@class="modal-title"]//ancestor::header[@class="modal-header"]//button//span[text()="Close"]

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
${LOGIN_ERROR_PASSWORD}    css=#pass-login-error

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
${CREATE_ACCOUNT_DOB_POPUP}    xpath=//div[@class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"]
${CREATE_ACCOUNT_DOB_MONTH_DROPDOWN}    xpath=//select[@class='ui-datepicker-month']
${CREATE_ACCOUNT_DOB_YEAR_DROPDOWN}    xpath=//*[@class='ui-datepicker-year']
${CREATE_ACCOUNT_DOB_DATE}    css=#ui-datepicker-div > table > tbody > tr:nth-child(3) > td:nth-child(4) > a
${CREATE_ACCOUNT_GENDER_TO_EXPAND_LIST}    xpath=//div[@class="control custom-select"]
${CREATE_ACCOUNT_GENDER_DROPDOWN}    css=#gender
${CREATE_ACCOUNT_GENDER_PLEASE_VERIFY_GENDER_OPTION}    xpath=//div[@class="control custom-select"]//select[@id="gender"]//option[contains(text(),"Please specify gender")]
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
${CREATE_ACCOUNT_FIRSTNAME_ERROR}    xpath=//div[@class="field field-name-firstname required"]//div[@id="firstname-error"]
${CREATE_ACCOUNT_LASTNAME_ERROR}    xpath=//div[@class="field field-name-lastname required"]//div[@id="lastname-error"]
${CREATE_ACCOUNT_EMAIL_ERROR}    xpath=//div[@class="field required"]//div[@id="popup-email_address-error"]
${CREATE_ACCOUNT_PASSWORD_ERROR}    xpath=//div[@class="field password required"]//div[@id="password-error"]
${CREATE_ACCOUNT_RE_ENTER_PASSWORD_ERROR}    xpath=//div[@class="field password confirmation required"]//div[@id="password-confirmation-error"]
${CREATE_ACCOUNT_DOB_ERROR}    xpath=//div[@class="field required"]//div[@id="my_dob-error"]
${CREATE_ACCOUNT_GENDER_ERROR}    xpath=//div[@class="field required"]//div[@id="gender-error"]
${CREATE_ACCOUNT_PHONENUMBER_ERROR}    xpath=//div[@class="field field-phone_number telephone required"]//div[@id="phone_number-error"]
${CREATE_ACCOUNT_TC_PDPA_CHECKBOX_ERROR}    xpath=//div[@class="confirmation custom-checkbox required margin-bottom-20 control"]//div[@id="terms_conditions-error"] 

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
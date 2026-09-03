.class public interface abstract Lcn/nubia/accountsdk/http/HttpApiConstants;
.super Ljava/lang/Object;
.source "HttpApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accountsdk/http/HttpApiConstants$InfoType;,
        Lcn/nubia/accountsdk/http/HttpApiConstants$Mail;,
        Lcn/nubia/accountsdk/http/HttpApiConstants$Send;,
        Lcn/nubia/accountsdk/http/HttpApiConstants$EmailActiveType;,
        Lcn/nubia/accountsdk/http/HttpApiConstants$SmsActiveType;,
        Lcn/nubia/accountsdk/http/HttpApiConstants$ThirdAccountType;,
        Lcn/nubia/accountsdk/http/HttpApiConstants$VerifyType;
    }
.end annotation


# static fields
.field public static final HOST_URL_DEV:Ljava/lang/String; = "https://sdk-account-dev.server.nubia.cn"

.field public static final HOST_URL_RELEASE:Ljava/lang/String; = "https://sdk-account.server.nubia.cn"

.field public static final HOST_URL_TEST:Ljava/lang/String; = "https://sdk-account-test.server.nubia.cn"

.field public static final HOST_ZTE_URL_RELEASE:Ljava/lang/String; = "https://dc.ztems.com"

.field public static final HOST_ZTE_URL_TEST:Ljava/lang/String; = "https://acc-test.ztems.com"

.field public static final PARAM_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final PARAM_ACTIVE_CODE:Ljava/lang/String; = "active_code"

.field public static final PARAM_AGAIN:Ljava/lang/String; = "again"

.field public static final PARAM_AREA:Ljava/lang/String; = "area"

.field public static final PARAM_AUTH_CODE:Ljava/lang/String; = "auth_code"

.field public static final PARAM_AVATAR:Ljava/lang/String; = "avatar"

.field public static final PARAM_CAPTCHA:Ljava/lang/String; = "captcha"

.field public static final PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final PARAM_CLIENT_SECRET:Ljava/lang/String; = "client_secret"

.field public static final PARAM_CODE:Ljava/lang/String; = "code"

.field public static final PARAM_CONTENT:Ljava/lang/String; = "content"

.field public static final PARAM_EMAIL:Ljava/lang/String; = "email"

.field public static final PARAM_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final PARAM_GAME_APP_ID:Ljava/lang/String; = "game_app_id"

.field public static final PARAM_GRANT_TYPE:Ljava/lang/String; = "grant_type"

.field public static final PARAM_HEIGHT:Ljava/lang/String; = "height"

.field public static final PARAM_IDENTITY_NUMBER:Ljava/lang/String; = "identity_number"

.field public static final PARAM_IDENTITY_TYPE:Ljava/lang/String; = "identity_type"

.field public static final PARAM_LANG:Ljava/lang/String; = "lang"

.field public static final PARAM_LOGIN_TAG:Ljava/lang/String; = "login_tag"

.field public static final PARAM_MESSAGE:Ljava/lang/String; = "message"

.field public static final PARAM_MOBILE:Ljava/lang/String; = "mobile"

.field public static final PARAM_NEW_PASSWORD:Ljava/lang/String; = "new_password"

.field public static final PARAM_NICK_NAME:Ljava/lang/String; = "display_name"

.field public static final PARAM_OLD_PASSWORD:Ljava/lang/String; = "old_password"

.field public static final PARAM_PASSWORD:Ljava/lang/String; = "password"

.field public static final PARAM_PHONE:Ljava/lang/String; = "phone"

.field public static final PARAM_REAL_NAME:Ljava/lang/String; = "real_name"

.field public static final PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final PARAM_RESPONSE:Ljava/lang/String; = "response"

.field public static final PARAM_RESULT:Ljava/lang/String; = "result"

.field public static final PARAM_SCOPE:Ljava/lang/String; = "scope"

.field public static final PARAM_SIGN:Ljava/lang/String; = "sign"

.field public static final PARAM_SINGLE_SIGN_OUT:Ljava/lang/String; = "single_sign_out"

.field public static final PARAM_SOCIAL_ACCESS_TOKEN:Ljava/lang/String; = "social_access_token"

.field public static final PARAM_SOCIAL_ACCOUNT_TYPE:Ljava/lang/String; = "social_account_type"

.field public static final PARAM_SOCIAL_AVATAR:Ljava/lang/String; = "social_avatar"

.field public static final PARAM_SOCIAL_NICKNAME:Ljava/lang/String; = "social_nickname"

.field public static final PARAM_SOCIAL_OPEN_ID:Ljava/lang/String; = "social_open_id"

.field public static final PARAM_THIRDBIND_STATUS:Ljava/lang/String; = "status"

.field public static final PARAM_THIRD_ACCOUNT_TYPE:Ljava/lang/String; = "third_account_type"

.field public static final PARAM_THIRD_FIGURE:Ljava/lang/String; = "figure"

.field public static final PARAM_THIRD_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final PARAM_TOKEN_ID:Ljava/lang/String; = "token_id"

.field public static final PARAM_TOKEN_KEY:Ljava/lang/String; = "token_key"

.field public static final PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final PARAM_UID:Ljava/lang/String; = "uid"

.field public static final PARAM_UNIONID_KEY:Ljava/lang/String; = "union_id_key"

.field public static final PARAM_UNIONID_TIME:Ljava/lang/String; = "union_id_time"

.field public static final PARAM_UNION_ID:Ljava/lang/String; = "union_id"

.field public static final PARAM_USERNAME:Ljava/lang/String; = "username"

.field public static final PARAM_USERNO:Ljava/lang/String; = "userno"

.field public static final PARAM_USER_INFO:Ljava/lang/String; = "user_info"

.field public static final PARAM_VERIFY_CODE:Ljava/lang/String; = "verify_code"

.field public static final PARAM_VERIFY_TYPE:Ljava/lang/String; = "verify_type"

.field public static final PARAM_WEB_LOGIN:Ljava/lang/String; = "url"

.field public static final PARAM_WIDTH:Ljava/lang/String; = "width"

.field public static final PARAM_WX_OPEN_ID:Ljava/lang/String; = "open_id"

.field public static final PARAM_ZTE_TOKEN:Ljava/lang/String; = "social_access_token"

.field public static final URL_ACCOUNT_CHANNEL:Ljava/lang/String; = "/oauth2/bindchannel"

.field public static final URL_APP_WEB_SYNLOGIN:Ljava/lang/String; = "/profile/app_web_synlogin.zte"

.field public static final URL_BIND_THIRD_ACCOUNT:Ljava/lang/String; = "/third_account/bind_third_account.zte"

.field public static final URL_CHANGE_INFO:Ljava/lang/String; = "/profile/user/basic_update.zte"

.field public static final URL_CHANGE_PASSWORD:Ljava/lang/String; = "/profile/change_password.zte"

.field public static final URL_CHANGE_USER_AVATAR:Ljava/lang/String; = "/profile/change_avatar.zte"

.field public static final URL_CHECK_ACCOUNT_EXIST:Ljava/lang/String; = "/profile/is_exist.zte"

.field public static final URL_CHECK_AUTH_CODE:Ljava/lang/String; = "/sms/check_code.zte"

.field public static final URL_CHECK_EMAIL:Ljava/lang/String; = "/email/check_active.zte"

.field public static final URL_CHECK_EMAIL_BIND_THIRD_ACCOUNT:Ljava/lang/String; = "/third_account/check_bind_email.zte"

.field public static final URL_CHECK_IMAGE_CODE:Ljava/lang/String; = "/captcha/check_code.zte"

.field public static final URL_CHECK_MODIFY_EMAIL_IS_ACTIVE_:Ljava/lang/String; = "/email/modify_email_check.zte"

.field public static final URL_CHECK_SUPPLEMENT_EMAIL:Ljava/lang/String; = "/third_account/check_supplement_email.zte"

.field public static final URL_CHECK_VERIFY_ACTIVECODE:Ljava/lang/String; = "/sms/user_verify_check.zte"

.field public static final URL_CHECK_VERIFY_EMAIL_IS_ACTIVE_:Ljava/lang/String; = "/email/user_verify_check.zte"

.field public static final URL_FETCH_BIND_RELATION:Ljava/lang/String; = "/third_account/fetch_bind_relation.zte"

.field public static final URL_FETCH_CODE:Ljava/lang/String; = "/sms/fetch_code.zte"

.field public static final URL_FETCH_EMAIL:Ljava/lang/String; = "/email/fetch_email.zte"

.field public static final URL_FETCH_EMAIL_BIND_THIRD_ACCOUNT:Ljava/lang/String; = "/third_account/fetch_bind_email.zte"

.field public static final URL_FETCH_IMAGE_CODE:Ljava/lang/String; = "/captcha/fetch_code.zte"

.field public static final URL_FETCH_MODIFY_EMAIL:Ljava/lang/String; = "/email/fetch_modify_email.zte"

.field public static final URL_FETCH_MODIFY_PHONE_SMSCODE:Ljava/lang/String; = "/sms/fetch_modify_code.zte"

.field public static final URL_FETCH_SMS_CODE_ZTE:Ljava/lang/String; = "/openapi/app/smscode"

.field public static final URL_FETCH_UNIQUE_CODE:Ljava/lang/String; = "/profile/fetch_unique_code.zte"

.field public static final URL_GET_ACCESS_TOKEN:Ljava/lang/String; = "/oauth2/token"

.field public static final URL_GET_REAL_IDENTITY:Ljava/lang/String; = "/profile/get_real_identity.zte"

.field public static final URL_GET_SOCIAL_BIND_LIST:Ljava/lang/String; = "/social/bind/list"

.field public static final URL_GET_USER_MORE:Ljava/lang/String; = "/user/profile/more"

.field public static final URL_LOGIN:Ljava/lang/String; = "/profile/check_password.zte"

.field public static final URL_LOGIN_ZTE:Ljava/lang/String; = "/openapi/app/login"

.field public static final URL_MODIFY_PHONE:Ljava/lang/String; = "/sms/modify_mobile.zte"

.field public static final URL_OAUTH_BIND_PROFILE:Ljava/lang/String; = "/oauth2/bindprofile"

.field public static final URL_OAUTH_BIND_SIGNIN:Ljava/lang/String; = "/oauth2/bindsignin"

.field public static final URL_OAUTH_PASSWORD_RESET:Ljava/lang/String; = "/oauth2/password/reset"

.field public static final URL_OAUTH_SIGN_IN:Ljava/lang/String; = "/oauth2/signin"

.field public static final URL_OAUTH_SIGN_UP:Ljava/lang/String; = "/oauth2/signup"

.field public static final URL_OAUTH_SOCIAL_BIND:Ljava/lang/String; = "/oauth2/social/bind"

.field public static final URL_OAUTH_SOCIAL_BIND_CREATE:Ljava/lang/String; = "/oauth2/social/bind/create"

.field public static final URL_OAUTH_SOCIAL_BIND_UPDATE:Ljava/lang/String; = "/oauth2/social/bind/update"

.field public static final URL_OAUTH_SOCIAL_SIGN_IN:Ljava/lang/String; = "/oauth2/social/signin"

.field public static final URL_SMS_CODE_CHECK:Ljava/lang/String; = "/v1/sms/code/check"

.field public static final URL_SMS_CODE_SEND:Ljava/lang/String; = "/v1/sms/code/send"

.field public static final URL_SMS_REGISTER:Ljava/lang/String; = "/sms/set_info.zte"

.field public static final URL_SMS_SEND:Ljava/lang/String; = "/v1/sms/send"

.field public static final URL_SMS_SEND_GET_IMG:Ljava/lang/String; = "/v1/sms/verifycode"

.field public static final URL_SOCIAL_BIND:Ljava/lang/String; = "/social/bind"

.field public static final URL_SOCIAL_UNBIND:Ljava/lang/String; = "/social/unbind"

.field public static final URL_SUPPLEMENT_EMAIL:Ljava/lang/String; = "/third_account/fetch_supplement_email.zte"

.field public static final URL_SUPPLEMENT_MOBILE:Ljava/lang/String; = "/third_account/supplement_mobile.zte"

.field public static final URL_THIRD_ACCOUNT_BIND_NEW_MOBILE:Ljava/lang/String; = "/third_account/bind_new_mobile.zte"

.field public static final URL_THIRD_ACCOUNT_LOGIN:Ljava/lang/String; = "/third_account/login.zte"

.field public static final URL_THIRD_LOGIN_BIND_EXIST_NUBIA_ACCOUNT:Ljava/lang/String; = "/third_account/bind_exist_account.zte"

.field public static final URL_UNBIND_THIRD_ACCOUNT:Ljava/lang/String; = "/third_account/unbind_third_account.zte"

.field public static final URL_UPDATE_USER_AVATAR:Ljava/lang/String; = "/user/avatar/update"

.field public static final URL_UPDATE_USER_PASSWORD:Ljava/lang/String; = "/user/password/update"

.field public static final URL_UPDATE_USER_PROFILE:Ljava/lang/String; = "/user/profile/update"

.field public static final URL_USER_CERTIFICATION:Ljava/lang/String; = "/profile/change_real_identity.zte"

.field public static final URL_USER_PASSWORD_CHECK:Ljava/lang/String; = "/user/password/check"

.field public static final URL_USER_PASSWORD_EMPTY_CHECK:Ljava/lang/String; = "/user/password/empty/check"

.field public static final URL_USER_PASSWORD_SET:Ljava/lang/String; = "/user/password/set"

.field public static final URL_USER_SIGN_OUT:Ljava/lang/String; = "/user/signout"

.field public static final URL_USER_VERIFY:Ljava/lang/String; = "/profile/user_verify.zte"

.field public static final URL_ZTE_LOGIN:Ljava/lang/String; = "/openapi/app/login"

.field public static final URL_ZTE_SMS_CODE:Ljava/lang/String; = "/openapi/app/smscode"

.field public static final URL_ZTE_SMS_LOGIN:Ljava/lang/String; = "/openapi/app/smslogin"

.field public static final URL__SMS_CODE_LOGIN_ZTE:Ljava/lang/String; = "/openapi/app/smslogin"

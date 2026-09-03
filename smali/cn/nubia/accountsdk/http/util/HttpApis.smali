.class public Lcn/nubia/accountsdk/http/util/HttpApis;
.super Ljava/lang/Object;
.source "HttpApis.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/HttpApiConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accountsdk/http/util/HttpApis$CustomType;,
        Lcn/nubia/accountsdk/http/util/HttpApis$ServerEnvType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_SDK_VERSION:Ljava/lang/String; = "1.1.0"

.field public static DEVICE_INFO_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAppID:Ljava/lang/String; = null

.field private static mAppKey:Ljava/lang/String; = null

.field private static mCustomType:Ljava/lang/String; = "nubia"

.field private static mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams; = null

.field private static mServerEnv:I = 0x2

.field private static mZteAppID:Ljava/lang/String;

.field private static mZteAppScretId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckAccountChannle(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 242
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 243
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 244
    const-string v2, "mobile"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :try_start_0
    const-string p0, "/oauth2/bindchannel"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 260
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static appWebSynlogin(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 1058
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 1060
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const-string p0, "url"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1065
    :try_start_0
    const-string p0, "/profile/app_web_synlogin.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1069
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1067
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 1071
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static authPasswordReset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 1625
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1626
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1627
    const-string v2, "phone"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    const-string p0, "code"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    const-string p0, "password"

    if-nez p2, :cond_0

    .line 1630
    const-string p1, ""

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1633
    :cond_0
    const-string p1, "rv"

    const-string v2, "1.0"

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    invoke-static {p2}, Lcn/nubia/nbaccount/rsa/RSAEncrypt;->encryptPswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1635
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    :goto_0
    :try_start_0
    const-string p0, "/oauth2/password/reset"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1641
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1643
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1645
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static bindThirdAccontWhenLoggedIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 7

    .line 631
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p0, v1

    .line 634
    :cond_0
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v4, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v3}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v2

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    .line 637
    const-string v4, "union_id"

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string v4, "union_id_time"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string v4, "union_id_key"

    invoke-static {p2, p0, v3}, Lcn/nubia/accountsdk/http/util/HttpApis;->getUnionIdKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string p2, "third_account_type"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string p2, "access_token"

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    .line 642
    const-string p3, "open_id"

    if-ne p6, p2, :cond_2

    .line 643
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 646
    invoke-interface {v2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 644
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "wxOpenId can not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 648
    :cond_2
    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :goto_0
    const-string p2, "nickname"

    invoke-interface {v2, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string p0, "figure"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string p0, "token_id"

    invoke-interface {v2, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    :try_start_0
    const-string p0, "/third_account/bind_third_account.zte"

    invoke-virtual {v0, p0, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 659
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 657
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x0

    .line 661
    :goto_2
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static changeAccountPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 282
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 284
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string p0, "rv"

    const-string v2, "1.0"

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {p1}, Lcn/nubia/nbaccount/rsa/RSAEncrypt;->encryptPswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 287
    invoke-static {p2}, Lcn/nubia/nbaccount/rsa/RSAEncrypt;->encryptPswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 288
    const-string p2, "old_password"

    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string p0, "new_password"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :try_start_0
    const-string p0, "/profile/change_password.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 296
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 294
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 298
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static changeUserAvatar(Ljava/lang/String;Ljava/io/File;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 303
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 305
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 307
    const-string v2, "avatar"

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 310
    :try_start_0
    const-string v2, "/profile/change_avatar.zte"

    invoke-virtual {v0, v2, v1, p0, p1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 314
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 312
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 316
    :goto_0
    invoke-static {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static changeUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 1075
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 1077
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    const-string p0, "content"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    const-string p0, "type"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1083
    :try_start_0
    const-string p0, "/profile/user/basic_update.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1087
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1085
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 1089
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static checkAuthCode(Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 803
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 805
    const-string v2, "mobile"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string p0, "active_code"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string p0, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    :try_start_0
    const-string p0, "/sms/check_code.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 814
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 812
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 816
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static checkBindThirdAccountSmsCode(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x2

    .line 367
    invoke-static {p0, p1, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->checkAuthCode(Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static checkImageCode(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 400
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 402
    const-string v2, "captcha"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :try_start_0
    const-string p0, "/captcha/check_code.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 409
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 407
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 411
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static checkModifyEmailIsActive(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 971
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 973
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    :try_start_0
    const-string p0, "/email/modify_email_check.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 980
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 978
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 982
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static checkRegisterSmsCode(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x1

    .line 357
    invoke-static {p0, p1, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->checkAuthCode(Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static checkRetrievePasswordSmsCode(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x0

    .line 362
    invoke-static {p0, p1, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->checkAuthCode(Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static checkSupplementEmailIsActive(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 734
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 736
    const-string v2, "email"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string p0, "token_id"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    :try_start_0
    const-string p0, "/third_account/check_supplement_email.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 744
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 742
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 746
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static checkUserVerifySmsCode(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 987
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 989
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    const-string p0, "active_code"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :try_start_0
    const-string p0, "/sms/user_verify_check.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 997
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 995
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 999
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static checkVerifyEmailIsActive(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 921
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 923
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    :try_start_0
    const-string p0, "/email/user_verify_check.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 930
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 928
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 932
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method private static creaZteSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 189
    const-string v0, ",end\u3002"

    const-string v1, "UTF-8"

    const-string v2, "HmacSHA256"

    .line 0
    const-string v3, "creaZteSign signStr2\uff1a"

    const-string v4, "creaZteSign signStr\uff1a"

    const-string v5, "creaZteSign secret\uff1a"

    const-string v6, "creaZteSign strToSign\uff1a"

    .line 191
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 193
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    .line 194
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 195
    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 196
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 197
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 200
    const-string p1, "utf-8"

    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 204
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    const-string p0, ""

    return-object p0
.end method

.method public static createPhoneAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x1

    .line 372
    invoke-static {p0, p1, p2, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->registerAndCreateNewPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fetThirdAccountBindRelation(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 751
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 753
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    :try_start_0
    const-string p0, "/third_account/fetch_bind_relation.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 760
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 758
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 762
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fetchBindThirdAccountSmsCode(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x2

    .line 347
    invoke-static {p0, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->sendAuthMessage(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method private static fetchEmailToModifyEmailAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 715
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 717
    const-string v2, "email"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string p1, "token_id"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string p0, "captcha"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string p0, "again"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    :try_start_0
    const-string p0, "/third_account/fetch_supplement_email.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 727
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 725
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 729
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method private static fetchEmailToModifyEmailAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 950
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 952
    const-string v2, "email"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const-string p0, "token_id"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const-string p0, "verify_code"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string p0, "captcha"

    invoke-interface {v1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string p0, "again"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    :try_start_0
    const-string p0, "/email/fetch_modify_email.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 963
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 961
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 965
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fetchImageCode(II)Lcn/nubia/accountsdk/http/model/ImageCodeResponse;
    .locals 4

    .line 382
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v1, "fetchImageCode()"

    invoke-static {v1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 385
    const-string v2, "height"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string/jumbo p1, "width"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 389
    :try_start_0
    const-string p1, "/captcha/fetch_code.zte"

    invoke-virtual {v0, p1, v1, p0}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doGetImage(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 393
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 395
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ImageCodeResponse;->parse([B)Lcn/nubia/accountsdk/http/model/ImageCodeResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fetchRegisterSmsCode(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x1

    .line 337
    invoke-static {p0, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->sendAuthMessage(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fetchRetrievePasswordSmsCode(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x0

    .line 342
    invoke-static {p0, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->sendAuthMessage(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fetchSigninSmsCode(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/16 v0, 0x12

    .line 1298
    invoke-static {p0, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->sendAuthMessage(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fetchSmsCode(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 1569
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1570
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1571
    const-string v2, "phone"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    const-string p0, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1576
    :try_start_0
    const-string p0, "/v1/sms/code/send"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1578
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1580
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1582
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fetchSmsCodeByImg(Ljava/lang/String;ILjava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 1587
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1588
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1589
    const-string v2, "phone"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    const-string p0, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    const-string p0, "verify_code"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1595
    :try_start_0
    const-string p0, "/v1/sms/send"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1597
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1599
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1601
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fetchSocialBindSmsCode(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/16 v0, 0xe

    .line 1436
    invoke-static {p0, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->sendAuthMessage(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fetchSupplemetnMobileSmsCode(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/16 v0, 0xa

    .line 352
    invoke-static {p0, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->sendAuthMessage(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fetchUniqueCode(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 321
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 323
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 326
    :try_start_0
    const-string v2, "/profile/fetch_unique_code.zte"

    invoke-virtual {v0, v2, v1, p0}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 332
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method private static genParameterMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1715
    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->DEVICE_INFO_MAP:Ljava/util/Map;

    const-string v2, "unique_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    const-string v1, "mobile_name"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    const-string v1, "mobile_model"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    const-string v1, "system_model"

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->DEVICE_INFO_MAP:Ljava/util/Map;

    const-string v2, "apk_version"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    const-string v1, "custom_made"

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mCustomType:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    const-string v1, "account_sdk_version"

    const-string v3, "1.1.0"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    const-string v1, "random_token"

    invoke-static {}, Lcn/nubia/accountsdk/http/util/UUidUtil;->randomToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->DEVICE_INFO_MAP:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->DEVICE_INFO_MAP:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->i(Ljava/lang/String;)V

    .line 1726
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method private static genSDKParamMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1707
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1708
    const-string v1, "client_id"

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getRealIdentity(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 1043
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 1045
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    :try_start_0
    const-string p0, "/profile/get_real_identity.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1052
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1050
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 1054
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static getServerEnv()I
    .locals 1

    .line 92
    sget v0, Lcn/nubia/accountsdk/http/util/HttpApis;->mServerEnv:I

    return v0
.end method

.method private static getSignToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 176
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    .line 181
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSmsImgCode(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 1606
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1607
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1608
    const-string v2, "phone"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    const-string p0, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1613
    :try_start_0
    const-string p0, "/v1/sms/verifycode"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1615
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1617
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1619
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static getSocialBindList(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ArrayResponse;
    .locals 3

    .line 1189
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1190
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1191
    const-string v2, "access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1195
    :try_start_0
    const-string p0, "/social/bind/list"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doGet(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1197
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1199
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1201
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ArrayResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ArrayResponse;

    move-result-object p0

    return-object p0
.end method

.method private static getUnionIdKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1732
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcn/nubia/accountsdk/http/util/HttpApis;->DEVICE_INFO_MAP:Ljava/util/Map;

    const-string v1, "unique_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1734
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/http/util/Sha1;->doSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1736
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUserInfo(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 1095
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1096
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1097
    const-string v2, "access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1101
    :try_start_0
    const-string p0, "/user/profile/more"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doGet(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1103
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1107
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/util/Map;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/util/HttpRequestorParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    sput-object p0, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    .line 55
    sput-object p1, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    .line 56
    sput-object p2, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    if-nez p2, :cond_0

    .line 57
    new-instance p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    invoke-direct {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;-><init>()V

    sput-object p0, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    .line 59
    :cond_0
    sput-object p3, Lcn/nubia/accountsdk/http/util/HttpApis;->DEVICE_INFO_MAP:Ljava/util/Map;

    .line 60
    sput p4, Lcn/nubia/accountsdk/http/util/HttpApis;->mServerEnv:I

    .line 61
    sput-object p5, Lcn/nubia/accountsdk/http/util/HttpApis;->mCustomType:Ljava/lang/String;

    return-void
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/util/Map;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/util/HttpRequestorParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 80
    sput-object p0, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    .line 81
    sput-object p1, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    .line 82
    sput-object p2, Lcn/nubia/accountsdk/http/util/HttpApis;->mZteAppID:Ljava/lang/String;

    .line 83
    sput-object p3, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    if-nez p3, :cond_0

    .line 84
    new-instance p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    invoke-direct {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;-><init>()V

    sput-object p0, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    .line 86
    :cond_0
    sput-object p4, Lcn/nubia/accountsdk/http/util/HttpApis;->DEVICE_INFO_MAP:Ljava/util/Map;

    .line 87
    sput p5, Lcn/nubia/accountsdk/http/util/HttpApis;->mServerEnv:I

    .line 88
    sput-object p6, Lcn/nubia/accountsdk/http/util/HttpApis;->mCustomType:Ljava/lang/String;

    return-void
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/util/Map;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/util/HttpRequestorParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66
    sput-object p3, Lcn/nubia/accountsdk/http/util/HttpApis;->mZteAppScretId:Ljava/lang/String;

    .line 67
    sput-object p0, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    .line 68
    sput-object p1, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    .line 69
    sput-object p2, Lcn/nubia/accountsdk/http/util/HttpApis;->mZteAppID:Ljava/lang/String;

    .line 70
    sput-object p4, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    if-nez p4, :cond_0

    .line 71
    new-instance p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    invoke-direct {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;-><init>()V

    sput-object p0, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    .line 73
    :cond_0
    sput-object p5, Lcn/nubia/accountsdk/http/util/HttpApis;->DEVICE_INFO_MAP:Ljava/util/Map;

    .line 74
    sput p6, Lcn/nubia/accountsdk/http/util/HttpApis;->mServerEnv:I

    .line 75
    sput-object p7, Lcn/nubia/accountsdk/http/util/HttpApis;->mCustomType:Ljava/lang/String;

    return-void
.end method

.method public static isAccountExis(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 266
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 268
    const-string v2, "username"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :try_start_0
    const-string p0, "/profile/is_exist.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 275
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 273
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 277
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static loginBindProfile(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;
    .locals 3

    .line 1279
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1280
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1281
    const-string v2, "social_access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-string/jumbo p0, "zapp_id"

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mZteAppID:Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    :try_start_0
    const-string p0, "/oauth2/bindprofile"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1287
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1289
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1291
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ValueResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method

.method public static loginBindSignIn(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;
    .locals 3

    .line 1262
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1263
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1264
    const-string v2, "social_access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    const-string/jumbo p0, "zapp_id"

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mZteAppID:Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    :try_start_0
    const-string p0, "/oauth2/bindsignin"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1270
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1272
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1274
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ValueResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method

.method public static loginOrCheckAccount(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 101
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 103
    const-string v2, "username"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string p0, "rv"

    const-string v2, "1.0"

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p1}, Lcn/nubia/nbaccount/rsa/RSAEncrypt;->encryptPswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 106
    const-string p1, "password"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "login_tag"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :try_start_0
    const-string p0, "/profile/check_password.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 114
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 116
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static loginOrCheckAccountZte(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ZteLoginResponse;
    .locals 4

    .line 212
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 215
    const-string v2, "appid"

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mZteAppID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v2, "pwd"

    invoke-static {p1}, Lcn/nubia/accountsdk/http/util/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string p1, "pwdenc"

    const-string v2, "md5"

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "timestamp"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string p1, "username"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {v1}, Lcn/nubia/accountsdk/http/util/HttpApis;->getSignToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 222
    sget-object p1, Lcn/nubia/accountsdk/http/util/HttpApis;->mZteAppScretId:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/accountsdk/http/util/HttpApis;->creaZteSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    const-string p0, ""

    .line 226
    :cond_0
    const-string p1, "sign"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 229
    :try_start_0
    const-string p1, "/openapi/app/login"

    invoke-virtual {v0, p1, v1, p0, p0}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doZtePost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "loginOrCheckAccountZte result\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 236
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

    move-result-object p0

    return-object p0
.end method

.method public static modifyEmailAddressSupplement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x0

    .line 703
    invoke-static {p0, p1, p2, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->fetchEmailToModifyEmailAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static modifyEmailAddressSupplementAgain(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 2

    .line 708
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcn/nubia/accountsdk/http/util/HttpApis;->fetchEmailToModifyEmailAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static modifyMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 902
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 904
    const-string v2, "mobile"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    const-string p1, "token_id"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string p0, "verify_code"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string p0, "active_code"

    invoke-interface {v1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    :try_start_0
    const-string p0, "/sms/modify_mobile.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 914
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 912
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 916
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static modifyMobileSupplement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 685
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 687
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string p0, "mobile"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string p0, "active_code"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :try_start_0
    const-string p0, "/third_account/supplement_mobile.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 696
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 694
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 698
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static oauthSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;
    .locals 5

    .line 1230
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1231
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1232
    const-string v2, "username"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v2, "password"

    const-string v3, ""

    if-eqz p0, :cond_0

    .line 1234
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1236
    :cond_0
    const-string p0, "rv"

    const-string v4, "1.0"

    invoke-interface {v1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    invoke-static {p1}, Lcn/nubia/nbaccount/rsa/RSAEncrypt;->encryptPswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1239
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez p2, :cond_1

    move-object p2, v3

    .line 1244
    :cond_1
    const-string p0, "code"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_2

    move-object p3, v3

    .line 1248
    :cond_2
    const-string p0, "scope"

    invoke-interface {v1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    :try_start_0
    const-string p0, "/oauth2/signin"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1253
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1255
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1257
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ValueResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method

.method public static oauthSignup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;
    .locals 5

    .line 1306
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1307
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1308
    const-string v2, "phone"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v2, "password"

    const-string v3, ""

    if-eqz p0, :cond_0

    .line 1310
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1313
    :cond_0
    const-string p0, "rv"

    const-string v4, "1.0"

    invoke-interface {v1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    invoke-static {p1}, Lcn/nubia/nbaccount/rsa/RSAEncrypt;->encryptPswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1315
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez p2, :cond_1

    move-object p2, v3

    .line 1320
    :cond_1
    const-string p0, "code"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_2

    move-object p3, v3

    .line 1324
    :cond_2
    const-string p0, "scope"

    invoke-interface {v1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    :try_start_0
    const-string p0, "/oauth2/signup"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1329
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1331
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1333
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ValueResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method

.method public static oauthSocialSignin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;
    .locals 3

    .line 1340
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1341
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1342
    const-string v2, "social_access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    const-string p0, "social_open_id"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    const-string p0, "social_account_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 1346
    const-string p3, ""

    .line 1348
    :cond_0
    const-string p0, "scope"

    invoke-interface {v1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    :try_start_0
    const-string p0, "/oauth2/social/signin"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1353
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1355
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1357
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ValueResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method

.method private static registerAndCreateNewPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 822
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 824
    const-string v2, "mobile"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string p0, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string p0, "active_code"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string p0, "rv"

    const-string p2, "1.0"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    invoke-static {p1}, Lcn/nubia/nbaccount/rsa/RSAEncrypt;->encryptPswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 829
    const-string p1, "password"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 830
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "login_tag"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :try_start_0
    const-string p0, "/sms/set_info.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 837
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 835
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 839
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x0

    .line 377
    invoke-static {p0, p1, p2, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->registerAndCreateNewPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method private static sendAuthMessage(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 787
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 789
    const-string v2, "mobile"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string p0, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    :try_start_0
    const-string p0, "/sms/fetch_code.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 797
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 795
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 799
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static sendEmailToModifyEmailAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x0

    .line 938
    invoke-static {p0, p1, p2, p3, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->fetchEmailToModifyEmailAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static sendEmailToModifyEmailAddressAgain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 2

    .line 943
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcn/nubia/accountsdk/http/util/HttpApis;->fetchEmailToModifyEmailAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static sendSmsCodeToModifyPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 883
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 885
    const-string v2, "mobile"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string p1, "token_id"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string p0, "verify_code"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :try_start_0
    const-string p0, "/sms/fetch_modify_code.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 894
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 892
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 896
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static sendSmsCodeZte(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ZteLoginResponse;
    .locals 4

    .line 121
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 124
    const-string v2, "appid"

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mZteAppID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "phone"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v2, "timestamp"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string p0, "type"

    const-string v2, "login"

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v1}, Lcn/nubia/accountsdk/http/util/HttpApis;->getSignToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 129
    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mZteAppScretId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcn/nubia/accountsdk/http/util/HttpApis;->creaZteSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string p0, ""

    .line 133
    :cond_0
    const-string v2, "sign"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 136
    :try_start_0
    const-string v2, "/openapi/app/smscode"

    invoke-virtual {v0, v2, v1, p0, p0}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doZtePost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

    move-result-object p0

    return-object p0
.end method

.method public static setServerEnv(I)V
    .locals 0

    .line 96
    sput p0, Lcn/nubia/accountsdk/http/util/HttpApis;->mServerEnv:I

    return-void
.end method

.method public static smsCodeCheck(Ljava/lang/String;ILjava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 1550
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1551
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1552
    const-string v2, "phone"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    const-string p0, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    const-string p0, "code"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1558
    :try_start_0
    const-string p0, "/v1/sms/code/check"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1560
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1562
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1564
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static smsCodeLoginZte(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ZteLoginResponse;
    .locals 4

    .line 147
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 150
    const-string v2, "appid"

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mZteAppID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v2, "phone"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string p0, "smscode"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "timestamp"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {v1}, Lcn/nubia/accountsdk/http/util/HttpApis;->getSignToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 156
    sget-object p1, Lcn/nubia/accountsdk/http/util/HttpApis;->mZteAppScretId:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/accountsdk/http/util/HttpApis;->creaZteSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    const-string p0, ""

    .line 160
    :cond_0
    const-string p1, "sign"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 163
    :try_start_0
    const-string p1, "/openapi/app/smslogin"

    invoke-virtual {v0, p1, v1, p0, p0}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doZtePost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

    move-result-object p0

    return-object p0
.end method

.method public static socialBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 1508
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1509
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1510
    const-string v2, "access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    const-string p0, "auth_code"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    const-string p0, "social_access_token"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    const-string p0, "social_open_id"

    invoke-interface {v1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    const-string p0, "social_account_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1518
    :try_start_0
    const-string p0, "/social/bind"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1520
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1522
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1524
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static socialUnbind(Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 1530
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1531
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1532
    const-string v2, "access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    const-string p0, "auth_code"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const-string p0, "social_account_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1538
    :try_start_0
    const-string p0, "/social/unbind"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1540
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1542
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1544
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static thirdAccountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 7

    .line 442
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p0, v1

    .line 445
    :cond_0
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v4, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v3}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v2

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    .line 448
    const-string v4, "union_id"

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v4, "union_id_time"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v4, "union_id_key"

    invoke-static {p2, p0, v3}, Lcn/nubia/accountsdk/http/util/HttpApis;->getUnionIdKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string p2, "third_account_type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string p2, "access_token"

    invoke-interface {v2, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    .line 453
    const-string p4, "open_id"

    if-ne p5, p2, :cond_2

    .line 454
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 457
    invoke-interface {v2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 455
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "wxOpenId can not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 459
    :cond_2
    invoke-interface {v2, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :goto_0
    const-string p2, "nickname"

    invoke-interface {v2, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string p0, "figure"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :try_start_0
    const-string p0, "/third_account/login.zte"

    invoke-virtual {v0, p0, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 469
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 467
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x0

    .line 471
    :goto_2
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static unbindThirdAccontWhenLoggedIn(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 666
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 668
    const-string v2, "third_account_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    const-string p1, "token_id"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :try_start_0
    const-string p0, "/third_account/unbind_third_account.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 676
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 674
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 678
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static updateUserAvatar(Ljava/lang/String;Ljava/io/File;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 1112
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1113
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1114
    const-string v2, "access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1116
    const-string v2, "avatar"

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1119
    :try_start_0
    const-string v2, "/user/avatar/update"

    invoke-virtual {v0, v2, v1, p0, p1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1123
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1127
    :goto_0
    invoke-static {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static updateUserPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 6

    .line 1154
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1155
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1156
    const-string v2, "access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v2, "old_password"

    const-string v3, "1.0"

    const-string v4, "rv"

    const-string v5, ""

    if-eqz p0, :cond_0

    .line 1158
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1160
    :cond_0
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    invoke-static {p1}, Lcn/nubia/nbaccount/rsa/RSAEncrypt;->encryptPswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1163
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p1, "new_password"

    if-eqz p0, :cond_1

    .line 1166
    invoke-interface {v1, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1168
    :cond_1
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    invoke-static {p2}, Lcn/nubia/nbaccount/rsa/RSAEncrypt;->encryptPswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1171
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-nez p3, :cond_2

    move-object p3, v5

    .line 1176
    :cond_2
    const-string p0, "auth_code"

    invoke-interface {v1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    :try_start_0
    const-string p0, "/user/password/update"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1181
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1183
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1185
    :goto_2
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static updateUserProfile(Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 1133
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1134
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1135
    const-string v2, "access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    const-string p0, "content"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    const-string p0, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1141
    :try_start_0
    const-string p0, "/user/profile/update"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1143
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1145
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1147
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static userCertification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 1022
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 1024
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    const-string p0, "real_name"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-string p0, "identity_number"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const-string p0, "identity_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 1029
    const-string p0, "game_app_id"

    invoke-interface {v1, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    :cond_0
    :try_start_0
    const-string p0, "/profile/change_real_identity.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1037
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1035
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 1039
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static userPasswordCheck(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;
    .locals 4

    .line 1481
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1482
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1483
    const-string v2, "access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v2, "password"

    if-eqz p0, :cond_0

    .line 1485
    const-string p0, ""

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1488
    :cond_0
    const-string p0, "rv"

    const-string v3, "1.0"

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    invoke-static {p1}, Lcn/nubia/nbaccount/rsa/RSAEncrypt;->encryptPswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1490
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    :goto_0
    :try_start_0
    const-string p0, "/user/password/check"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1496
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1498
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1500
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ValueResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method

.method public static userPasswordEmptyCheck(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;
    .locals 3

    .line 1649
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1650
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1651
    const-string v2, "access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    :try_start_0
    const-string p0, "/user/password/empty/check"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1656
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1658
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1660
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ValueResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method

.method public static userPasswordSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 1666
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1667
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1668
    const-string v2, "access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    const-string p0, "code"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p2, "password"

    if-eqz p0, :cond_0

    .line 1671
    const-string p0, ""

    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1674
    :cond_0
    const-string p0, "rv"

    const-string v2, "1.0"

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    invoke-static {p1}, Lcn/nubia/nbaccount/rsa/RSAEncrypt;->encryptPswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1676
    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    :goto_0
    :try_start_0
    const-string p0, "/user/password/set"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1682
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1684
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1686
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static userSignout(Ljava/lang/String;Z)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 3

    .line 1691
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>()V

    .line 1692
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genSDKParamMap()Ljava/util/Map;

    move-result-object v1

    .line 1693
    const-string v2, "access_token"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    const-string p0, "single_sign_out"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    :try_start_0
    const-string p0, "/user/signout"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    .line 1699
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1701
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 1703
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method private static userVerify(Ljava/lang/String;II)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 1005
    new-instance v0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;

    sget-object v1, Lcn/nubia/accountsdk/http/util/HttpApis;->mParam:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    sget-object v2, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppID:Ljava/lang/String;

    sget-object v3, Lcn/nubia/accountsdk/http/util/HttpApis;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->genParameterMap()Ljava/util/Map;

    move-result-object v1

    .line 1007
    const-string v2, "token_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    const-string p0, "verify_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    const-string p0, "again"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :try_start_0
    const-string p0, "/profile/user_verify.zte"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/accountsdk/http/util/SecureClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1016
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1014
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 1018
    :goto_1
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static userVerifyByEmail(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x0

    .line 777
    invoke-static {p0, p1, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->userVerify(Ljava/lang/String;II)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static userVerifyByEmailAgain(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x1

    .line 782
    invoke-static {p0, p1, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->userVerify(Ljava/lang/String;II)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static userVerifyByMobile(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x0

    .line 767
    invoke-static {p0, p1, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->userVerify(Ljava/lang/String;II)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public static userVerifyByMobileAgain(Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    const/4 v0, 0x1

    .line 772
    invoke-static {p0, p1, v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->userVerify(Ljava/lang/String;II)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

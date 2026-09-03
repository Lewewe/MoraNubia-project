.class public Lcn/nubia/redmagickyi/user/account/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/user/account/AccountInfo$AccountInfoTag_V2;,
        Lcn/nubia/redmagickyi/user/account/AccountInfo$AccountInfoTag;
    }
.end annotation


# static fields
.field public static final ACCOUNT_INFO_FILE:Ljava/lang/String; = "account_INFO_file"

.field private static final TAG:Ljava/lang/String; = "AccountInfo"


# instance fields
.field private access_token:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private open_id:Ljava/lang/String;

.field private token_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->nickname:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->mobile:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->email:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->token_id:Ljava/lang/String;

    return-void
.end method

.method public static clearAccountInfo(Landroid/content/Context;)V
    .locals 2

    .line 164
    const-string v0, "account_INFO_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 165
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 166
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 176
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    .line 177
    new-instance v0, Lcn/nubia/redmagickyi/user/account/AccountInfo$1;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static getAccountInfo(Lcn/nubia/accountsdk/http/model/CommonResponse;)Lcn/nubia/redmagickyi/user/account/AccountInfo;
    .locals 2

    .line 230
    new-instance v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;-><init>()V

    .line 232
    :try_start_0
    const-string v1, "open_id"

    invoke-virtual {p0, v1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->open_id:Ljava/lang/String;

    .line 233
    const-string v1, "nickname"

    invoke-virtual {p0, v1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->nickname:Ljava/lang/String;

    .line 234
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->mobile:Ljava/lang/String;

    .line 235
    const-string v1, "email"

    invoke-virtual {p0, v1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->email:Ljava/lang/String;

    .line 236
    const-string v1, "avatar"

    invoke-virtual {p0, v1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->avatar:Ljava/lang/String;

    .line 237
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->location:Ljava/lang/String;

    .line 238
    const-string v1, "gender"

    invoke-virtual {p0, v1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->gender:Ljava/lang/String;

    .line 239
    const-string v1, "birthday"

    invoke-virtual {p0, v1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->birthday:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 241
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    sget-object p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->TAG:Ljava/lang/String;

    const-string v0, "getAccountInfo error"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 257
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/utils/AESUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    .line 261
    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p1

    :goto_1
    return-object p3
.end method

.method public static reconstructionFromStore()Lcn/nubia/redmagickyi/user/account/AccountInfo;
    .locals 2

    .line 215
    new-instance v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;-><init>()V

    .line 216
    const-string v1, ""

    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->open_id:Ljava/lang/String;

    .line 217
    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->nickname:Ljava/lang/String;

    .line 218
    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->mobile:Ljava/lang/String;

    .line 219
    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->email:Ljava/lang/String;

    .line 220
    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->avatar:Ljava/lang/String;

    .line 221
    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->location:Ljava/lang/String;

    .line 222
    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->gender:Ljava/lang/String;

    .line 223
    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->birthday:Ljava/lang/String;

    .line 224
    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->token_id:Ljava/lang/String;

    .line 225
    iput-object v1, v0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public static reconstructionFromStore(Landroid/content/Context;)Lcn/nubia/redmagickyi/user/account/AccountInfo;
    .locals 6

    .line 188
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 189
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 193
    const-string v1, "account_INFO_file"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 195
    sget-object v1, Lcn/nubia/redmagickyi/user/account/AccountInfo;->TAG:Ljava/lang/String;

    const-string v2, "get account info from sharePreferences"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v2, Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/user/account/AccountInfo;-><init>()V

    .line 198
    const-string v3, "open_id_v2"

    const-string v4, "open_id"

    const-string v5, ""

    invoke-static {p0, v3, v4, v5}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/redmagickyi/user/account/AccountInfo;->open_id:Ljava/lang/String;

    .line 199
    const-string v3, "nickname_v2"

    const-string v4, "nickname"

    invoke-static {p0, v3, v4, v5}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/redmagickyi/user/account/AccountInfo;->nickname:Ljava/lang/String;

    .line 200
    const-string v3, "phone_v2"

    const-string v4, "phone"

    invoke-static {p0, v3, v4, v5}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/redmagickyi/user/account/AccountInfo;->mobile:Ljava/lang/String;

    .line 201
    const-string v3, "email_v2"

    const-string v4, "email"

    invoke-static {p0, v3, v4, v5}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/redmagickyi/user/account/AccountInfo;->email:Ljava/lang/String;

    .line 202
    const-string v3, "avatar_v2"

    const-string v4, "avatar"

    invoke-static {p0, v3, v4, v5}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/redmagickyi/user/account/AccountInfo;->avatar:Ljava/lang/String;

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " info avatar:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcn/nubia/redmagickyi/user/account/AccountInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v1, "location_v2"

    const-string v3, "location"

    invoke-static {p0, v1, v3, v5}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/nubia/redmagickyi/user/account/AccountInfo;->location:Ljava/lang/String;

    .line 205
    const-string v1, "gender_v2"

    const-string v3, "gender"

    invoke-static {p0, v1, v3, v5}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/nubia/redmagickyi/user/account/AccountInfo;->gender:Ljava/lang/String;

    .line 206
    const-string v1, "birthday_v2"

    const-string v3, "birthday"

    invoke-static {p0, v1, v3, v5}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/nubia/redmagickyi/user/account/AccountInfo;->birthday:Ljava/lang/String;

    .line 207
    const-string v1, "token_id_v2"

    const-string v3, "token_id"

    invoke-static {p0, v1, v3, v5}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/nubia/redmagickyi/user/account/AccountInfo;->token_id:Ljava/lang/String;

    .line 208
    const-string v1, "access_token_v2"

    const-string v3, "access_token"

    invoke-static {p0, v1, v3, v5}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcn/nubia/redmagickyi/user/account/AccountInfo;->access_token:Ljava/lang/String;

    .line 209
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v2
.end method

.method private static saveValue(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 249
    invoke-static {p3}, Lcom/zte/utils/AESUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->access_token:Ljava/lang/String;

    return-object p0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->avatar:Ljava/lang/String;

    return-object p0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->birthday:Ljava/lang/String;

    return-object p0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->email:Ljava/lang/String;

    return-object p0
.end method

.method public getGender()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->gender:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->mobile:Ljava/lang/String;

    return-object p0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->nickname:Ljava/lang/String;

    return-object p0
.end method

.method public getOpen_id()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->open_id:Ljava/lang/String;

    return-object p0
.end method

.method public getToken_id()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->token_id:Ljava/lang/String;

    return-object p0
.end method

.method public saveAccountInfo(Landroid/content/Context;)V
    .locals 3

    .line 124
    const-string v0, "account_INFO_file"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 125
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 126
    const-string v0, "open_id"

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->open_id:Ljava/lang/String;

    const-string v2, "open_id_v2"

    invoke-static {p1, v2, v0, v1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveValue(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "nickname"

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->nickname:Ljava/lang/String;

    const-string v2, "nickname_v2"

    invoke-static {p1, v2, v0, v1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveValue(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "phone"

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->mobile:Ljava/lang/String;

    const-string v2, "phone_v2"

    invoke-static {p1, v2, v0, v1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveValue(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "email"

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->email:Ljava/lang/String;

    const-string v2, "email_v2"

    invoke-static {p1, v2, v0, v1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveValue(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "avatar"

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->avatar:Ljava/lang/String;

    const-string v2, "avatar_v2"

    invoke-static {p1, v2, v0, v1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveValue(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "location"

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->location:Ljava/lang/String;

    const-string v2, "location_v2"

    invoke-static {p1, v2, v0, v1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveValue(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "gender"

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->gender:Ljava/lang/String;

    const-string v2, "gender_v2"

    invoke-static {p1, v2, v0, v1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveValue(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "birthday"

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->birthday:Ljava/lang/String;

    const-string v2, "birthday_v2"

    invoke-static {p1, v2, v0, v1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveValue(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "token_id"

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->token_id:Ljava/lang/String;

    const-string v2, "token_id_v2"

    invoke-static {p1, v2, v0, v1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveValue(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "access_token"

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->access_token:Ljava/lang/String;

    const-string v1, "access_token_v2"

    invoke-static {p1, v1, v0, p0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveValue(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->access_token:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->gender:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->location:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setOpen_id(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->open_id:Ljava/lang/String;

    return-void
.end method

.method public setToken_id(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/AccountInfo;->token_id:Ljava/lang/String;

    return-void
.end method

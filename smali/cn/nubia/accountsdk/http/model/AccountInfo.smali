.class public Lcn/nubia/accountsdk/http/model/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# instance fields
.field private mAccountInfoObject:Lorg/json/JSONObject;

.field private mArea:Ljava/lang/String;

.field private mAvatar:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mExpiresIn:Ljava/lang/Long;

.field private mMobile:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mTokenId:Ljava/lang/String;

.field private mTokenKey:Ljava/lang/String;

.field private mUid:Ljava/lang/Long;

.field private mUserName:Ljava/lang/String;

.field private mUserNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mArea:Ljava/lang/String;

    return-object p0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mAvatar:Ljava/lang/String;

    return-object p0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mEmail:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiresIn()Ljava/lang/Long;
    .locals 0

    .line 118
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mExpiresIn:Ljava/lang/Long;

    return-object p0
.end method

.method public getInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mAccountInfoObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mAccountInfoObject:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mMobile:Ljava/lang/String;

    return-object p0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mNickName:Ljava/lang/String;

    return-object p0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mTokenId:Ljava/lang/String;

    return-object p0
.end method

.method public getTokenKey()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mTokenKey:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()Ljava/lang/Long;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mUid:Ljava/lang/Long;

    return-object p0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mUserName:Ljava/lang/String;

    return-object p0
.end method

.method public getUserno()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mUserNo:Ljava/lang/String;

    return-object p0
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mArea:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mAvatar:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mEmail:Ljava/lang/String;

    return-void
.end method

.method public setExpiresIn(Ljava/lang/Long;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mExpiresIn:Ljava/lang/Long;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mMobile:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mNickName:Ljava/lang/String;

    return-void
.end method

.method public setTokenId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mTokenId:Ljava/lang/String;

    return-void
.end method

.method public setTokenKey(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mTokenKey:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/Long;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mUid:Ljava/lang/Long;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mUserName:Ljava/lang/String;

    return-void
.end method

.method public setUserno(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mUserNo:Ljava/lang/String;

    return-void
.end method

.method public setmResUserObject(Lorg/json/JSONObject;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfo;->mAccountInfoObject:Lorg/json/JSONObject;

    return-void
.end method

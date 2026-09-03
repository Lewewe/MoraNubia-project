.class public Lcn/nubia/oauthsdk/OAuthInfo;
.super Ljava/lang/Object;
.source "OAuthInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/oauthsdk/OAuthInfo$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mClientKey:Ljava/lang/String;

.field private mRedirectUri:Ljava/lang/String;

.field private mResponseType:Ljava/lang/String;

.field private mScope:Ljava/lang/String;

.field private mSkipConfirm:Z

.field private mState:Ljava/lang/String;

.field private mZteAppid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mScope:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->access$000(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mClientId:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->access$100(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mClientKey:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->access$200(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mRedirectUri:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->access$300(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mResponseType:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->access$400(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mScope:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->access$500(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mState:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->access$600(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mSkipConfirm:Z

    .line 24
    invoke-static {p1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->access$700(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mZteAppid:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/oauthsdk/OAuthInfo$Builder;Lcn/nubia/oauthsdk/OAuthInfo$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcn/nubia/oauthsdk/OAuthInfo;-><init>(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mClientKey:Ljava/lang/String;

    return-object p0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mRedirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mResponseType:Ljava/lang/String;

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public getSkipConfirm()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mSkipConfirm:Z

    return p0
.end method

.method public getState()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public getZteAppid()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mZteAppid:Ljava/lang/String;

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public setClientKey(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mClientKey:Ljava/lang/String;

    return-object p0
.end method

.method public setRedirectUri(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mRedirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public setResponseType(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mResponseType:Ljava/lang/String;

    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public setSkipConfirm(Z)Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mSkipConfirm:Z

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public setZteAppid(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo;->mZteAppid:Ljava/lang/String;

    return-object p0
.end method

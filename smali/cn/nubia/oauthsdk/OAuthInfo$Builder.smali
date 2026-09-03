.class public Lcn/nubia/oauthsdk/OAuthInfo$Builder;
.super Ljava/lang/Object;
.source "OAuthInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/OAuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;

.field private redirectUri:Ljava/lang/String;

.field private responseType:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private skipConfirm:Z

.field private state:Ljava/lang/String;

.field private zteAppid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-string v0, "token"

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->responseType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->clientKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->redirectUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->responseType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->scope:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->state:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->skipConfirm:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/oauthsdk/OAuthInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->zteAppid:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 2

    .line 149
    new-instance v0, Lcn/nubia/oauthsdk/OAuthInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/oauthsdk/OAuthInfo;-><init>(Lcn/nubia/oauthsdk/OAuthInfo$Builder;Lcn/nubia/oauthsdk/OAuthInfo$1;)V

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;
    .locals 0

    .line 114
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method public setClientKey(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->clientKey:Ljava/lang/String;

    return-object p0
.end method

.method public setRedirectUri(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->redirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public setResponseType(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->responseType:Ljava/lang/String;

    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;
    .locals 0

    .line 129
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public setSkipConfirm(Z)Lcn/nubia/oauthsdk/OAuthInfo$Builder;
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->skipConfirm:Z

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->state:Ljava/lang/String;

    return-object p0
.end method

.method public setZteAppid(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;
    .locals 0

    .line 109
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->zteAppid:Ljava/lang/String;

    return-object p0
.end method

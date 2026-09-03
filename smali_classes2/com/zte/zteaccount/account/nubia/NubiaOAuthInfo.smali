.class public Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;
.super Ljava/lang/Object;
.source "NubiaOAuthInfo.java"


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private expiresIn:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_in"
    .end annotation
.end field

.field private openId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "open_id"
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_token"
    .end annotation
.end field

.field private scope:Ljava/lang/String;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiresIn()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->expiresIn:J

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->openId:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setExpiresIn(J)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->expiresIn:J

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->openId:Ljava/lang/String;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->scope:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->userId:Ljava/lang/String;

    return-void
.end method

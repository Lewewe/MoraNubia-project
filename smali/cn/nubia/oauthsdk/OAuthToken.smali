.class public Lcn/nubia/oauthsdk/OAuthToken;
.super Ljava/lang/Object;
.source "OAuthToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/oauthsdk/OAuthToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mClientKey:Ljava/lang/String;

.field private mCode:Ljava/lang/String;

.field private mExpireIn:Ljava/lang/String;

.field private mScope:Ljava/lang/String;

.field private mState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcn/nubia/oauthsdk/OAuthToken$1;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/OAuthToken$1;-><init>()V

    sput-object v0, Lcn/nubia/oauthsdk/OAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "access_token"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthToken;->mAccessToken:Ljava/lang/String;

    .line 19
    const-string v0, "expires_in"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthToken;->mExpireIn:Ljava/lang/String;

    .line 20
    const-string v0, "scope"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthToken;->mScope:Ljava/lang/String;

    .line 21
    const-string v0, "client_key"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthToken;->mClientKey:Ljava/lang/String;

    .line 22
    const-string v0, "state"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthToken;->mState:Ljava/lang/String;

    .line 23
    const-string v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthToken;->mCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthToken;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthToken;->mClientKey:Ljava/lang/String;

    return-object p0
.end method

.method public getCode()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthToken;->mCode:Ljava/lang/String;

    return-object p0
.end method

.method public getExpireIn()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthToken;->mExpireIn:Ljava/lang/String;

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthToken;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthToken;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 73
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 74
    const-string v0, "access_token"

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthToken;->mAccessToken:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "expires_in"

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthToken;->mExpireIn:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "scope"

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthToken;->mScope:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "client_key"

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthToken;->mClientKey:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "state"

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthToken;->mState:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "code"

    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthToken;->mCode:Ljava/lang/String;

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method

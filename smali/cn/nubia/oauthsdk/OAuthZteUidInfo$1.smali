.class final Lcn/nubia/oauthsdk/OAuthZteUidInfo$1;
.super Ljava/lang/Object;
.source "OAuthZteUidInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/OAuthZteUidInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/oauthsdk/OAuthZteUidInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/oauthsdk/OAuthZteUidInfo;
    .locals 1

    .line 37
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    const-class v0, Lcn/nubia/oauthsdk/OAuthZteUidInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 39
    new-instance p0, Lcn/nubia/oauthsdk/OAuthZteUidInfo;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/OAuthZteUidInfo;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/OAuthZteUidInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/oauthsdk/OAuthZteUidInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcn/nubia/oauthsdk/OAuthZteUidInfo;
    .locals 0

    .line 44
    new-array p0, p1, [Lcn/nubia/oauthsdk/OAuthZteUidInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/OAuthZteUidInfo$1;->newArray(I)[Lcn/nubia/oauthsdk/OAuthZteUidInfo;

    move-result-object p0

    return-object p0
.end method

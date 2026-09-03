.class public Lcn/nubia/oauthsdk/OAuthZteUidInfo;
.super Ljava/lang/Object;
.source "OAuthZteUidInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/oauthsdk/OAuthZteUidInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:Ljava/lang/String;

.field private mZuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcn/nubia/oauthsdk/OAuthZteUidInfo$1;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/OAuthZteUidInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/oauthsdk/OAuthZteUidInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCode()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthZteUidInfo;->mCode:Ljava/lang/String;

    return-object p0
.end method

.method public getZuid()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthZteUidInfo;->mZuid:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthZteUidInfo;->mCode:Ljava/lang/String;

    return-void
.end method

.method public setZuid(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthZteUidInfo;->mZuid:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 56
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 57
    const-string v0, "access_token"

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthZteUidInfo;->mZuid:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "code"

    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthZteUidInfo;->mCode:Ljava/lang/String;

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method

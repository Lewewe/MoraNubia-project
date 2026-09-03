.class final Lcn/nubia/oauthsdk/OAuthError$1;
.super Ljava/lang/Object;
.source "OAuthError.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/OAuthError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/oauthsdk/OAuthError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/oauthsdk/OAuthError;
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance v1, Lcn/nubia/oauthsdk/OAuthError;

    invoke-direct {v1, p0, v0, p1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/OAuthError$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/oauthsdk/OAuthError;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcn/nubia/oauthsdk/OAuthError;
    .locals 0

    .line 49
    new-array p0, p1, [Lcn/nubia/oauthsdk/OAuthError;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/OAuthError$1;->newArray(I)[Lcn/nubia/oauthsdk/OAuthError;

    move-result-object p0

    return-object p0
.end method

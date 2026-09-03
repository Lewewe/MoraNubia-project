.class final Lcn/nubia/oauthsdk/UserInfo$1;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/oauthsdk/UserInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/oauthsdk/UserInfo;
    .locals 0

    .line 37
    new-instance p0, Lcn/nubia/oauthsdk/UserInfo;

    invoke-direct {p0, p1}, Lcn/nubia/oauthsdk/UserInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/UserInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/oauthsdk/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcn/nubia/oauthsdk/UserInfo;
    .locals 0

    .line 42
    new-array p0, p1, [Lcn/nubia/oauthsdk/UserInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/UserInfo$1;->newArray(I)[Lcn/nubia/oauthsdk/UserInfo;

    move-result-object p0

    return-object p0
.end method

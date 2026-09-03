.class final Lcn/nubia/upgrade/model/VersionData$a;
.super Ljava/lang/Object;
.source "VersionData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/model/VersionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/upgrade/model/VersionData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/upgrade/model/VersionData;
    .locals 0

    .line 2
    new-instance p0, Lcn/nubia/upgrade/model/VersionData;

    invoke-direct {p0, p1}, Lcn/nubia/upgrade/model/VersionData;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/model/VersionData$a;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcn/nubia/upgrade/model/VersionData;
    .locals 0

    .line 2
    new-array p0, p1, [Lcn/nubia/upgrade/model/VersionData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/model/VersionData$a;->newArray(I)[Lcn/nubia/upgrade/model/VersionData;

    move-result-object p0

    return-object p0
.end method

.class final Lcn/nubia/upgrade/http/a$a;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/http/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/upgrade/http/a;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/upgrade/http/a;
    .locals 0

    .line 2
    new-instance p0, Lcn/nubia/upgrade/http/a;

    invoke-direct {p0, p1}, Lcn/nubia/upgrade/http/a;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/http/a$a;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/upgrade/http/a;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcn/nubia/upgrade/http/a;
    .locals 0

    .line 2
    new-array p0, p1, [Lcn/nubia/upgrade/http/a;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/http/a$a;->newArray(I)[Lcn/nubia/upgrade/http/a;

    move-result-object p0

    return-object p0
.end method

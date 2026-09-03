.class final Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;
.super Ljava/lang/Object;
.source "NubiaUpdateConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .locals 0

    .line 2
    new-instance p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-direct {p0, p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .locals 0

    .line 2
    new-array p0, p1, [Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;->newArray(I)[Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object p0

    return-object p0
.end method

.class final Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo$1;
.super Ljava/lang/Object;
.source "ThirdAccountBindInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;
    .locals 1

    .line 142
    new-instance p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;-><init>(Landroid/os/Parcel;Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;
    .locals 0

    .line 147
    new-array p0, p1, [Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo$1;->newArray(I)[Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;

    move-result-object p0

    return-object p0
.end method

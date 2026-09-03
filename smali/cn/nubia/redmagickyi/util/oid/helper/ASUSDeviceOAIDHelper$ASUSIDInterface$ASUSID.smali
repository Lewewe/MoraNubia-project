.class public final Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$ASUSIDInterface$ASUSID;
.super Ljava/lang/Object;
.source "ASUSDeviceOAIDHelper.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$ASUSIDInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$ASUSIDInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ASUSID"
.end annotation


# instance fields
.field private iBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$ASUSIDInterface$ASUSID;->iBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 92
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$ASUSIDInterface$ASUSID;->iBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public getID()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 101
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 102
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :try_start_2
    const-string v3, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$ASUSIDInterface$ASUSID;->iBinder:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {p0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 105
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 106
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_0
    if-eqz v1, :cond_4

    .line 114
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-object v2, v0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v1, v0

    :goto_1
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    :cond_2
    throw p0

    :catch_1
    move-object v1, v0

    move-object v2, v1

    :catch_2
    :goto_2
    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method public isSupport()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 127
    const-string v3, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$ASUSIDInterface$ASUSID;->iBinder:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {p0, v3, v2, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    move v0, v3

    :cond_0
    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_1
    if-eqz v2, :cond_5

    .line 140
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    if-eqz v2, :cond_3

    .line 140
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 142
    :cond_3
    throw p0

    :catch_0
    move-object v2, v1

    :catch_1
    if-eqz v1, :cond_4

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    return v0
.end method

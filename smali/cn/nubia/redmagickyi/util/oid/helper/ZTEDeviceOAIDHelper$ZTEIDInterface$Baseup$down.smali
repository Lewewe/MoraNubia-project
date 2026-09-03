.class public Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface$Baseup$down;
.super Ljava/lang/Object;
.source "ZTEDeviceOAIDHelper.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface$Baseup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "down"
.end annotation


# instance fields
.field private binder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface$Baseup$down;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 125
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface$Baseup$down;->binder:Landroid/os/IBinder;

    return-object p0
.end method

.method public c()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 134
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 136
    const-string v3, "com.bun.lib.MsaIdInterface"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface$Baseup$down;->binder:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {p0, v3, v2, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_1
    if-eqz v2, :cond_3

    .line 149
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v1

    .line 143
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    return v0

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_4
    if-eqz v2, :cond_5

    .line 149
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 151
    :cond_5
    throw p0
.end method

.method public getOAID()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    const-string v3, "com.bun.lib.MsaIdInterface"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface$Baseup$down;->binder:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {p0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 165
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 166
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_0
    if-eqz v1, :cond_2

    .line 174
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-object v2, v0

    goto :goto_1

    :catchall_1
    move-object v1, v0

    move-object v2, v1

    :catchall_2
    :goto_1
    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public isSupported()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 188
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 190
    const-string v3, "com.bun.lib.MsaIdInterface"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface$Baseup$down;->binder:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {p0, v3, v2, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    move v1, v3

    :cond_0
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    if-eqz v2, :cond_5

    .line 203
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_1
    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_2
    if-eqz v2, :cond_3

    .line 203
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 205
    :cond_3
    throw p0

    :catch_0
    move-object v2, v0

    :catch_1
    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    return v1
.end method

.method public shutDown()V
    .locals 4

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 214
    :try_start_0
    const-string v2, "com.bun.lib.MsaIdInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface$Baseup$down;->binder:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 218
    :catchall_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

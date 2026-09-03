.class Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGetAccountInfoListener.java"

# interfaces
.implements Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 113
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 117
    const-string p0, "cn.nubia.accountsdk.aidl.IGetAccountInfoListener"

    return-object p0
.end method

.method public onComplete(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 129
    :try_start_0
    const-string v2, "cn.nubia.accountsdk.aidl.IGetAccountInfoListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {p1, v0, v3}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    :goto_0
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 138
    invoke-static {}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;->getDefaultImpl()Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 139
    invoke-static {}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;->getDefaultImpl()Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;->onComplete(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 142
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    throw p0
.end method

.method public onException(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 160
    :try_start_0
    const-string v2, "cn.nubia.accountsdk.aidl.IGetAccountInfoListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 164
    invoke-static {}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;->getDefaultImpl()Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 165
    invoke-static {}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;->getDefaultImpl()Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;->onException(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 168
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    throw p0
.end method

.class Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGetBaiduAccountInfoListener.java"

# interfaces
.implements Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 109
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 113
    const-string p0, "cn.nubia.accountsdk.aidl.IGetBaiduAccountInfoListener"

    return-object p0
.end method

.method public onCancel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 163
    :try_start_0
    const-string v2, "cn.nubia.accountsdk.aidl.IGetBaiduAccountInfoListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 165
    invoke-static {}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;->getDefaultImpl()Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 166
    invoke-static {}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;->getDefaultImpl()Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 169
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw p0
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 123
    :try_start_0
    const-string v2, "cn.nubia.accountsdk.aidl.IGetBaiduAccountInfoListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 128
    invoke-static {}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;->getDefaultImpl()Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 129
    invoke-static {}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;->getDefaultImpl()Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;->onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 132
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    throw p0
.end method

.method public onException(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 144
    :try_start_0
    const-string v2, "cn.nubia.accountsdk.aidl.IGetBaiduAccountInfoListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 147
    invoke-static {}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;->getDefaultImpl()Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 148
    invoke-static {}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;->getDefaultImpl()Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;->onException(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 151
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw p0
.end method

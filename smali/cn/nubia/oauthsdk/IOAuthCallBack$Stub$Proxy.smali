.class Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOAuthCallBack.java"

# interfaces
.implements Lcn/nubia/oauthsdk/IOAuthCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcn/nubia/oauthsdk/IOAuthCallBack;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 153
    iget-object p0, p0, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 157
    const-string p0, "cn.nubia.oauthsdk.IOAuthCallBack"

    return-object p0
.end method

.method public onCode(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 239
    :try_start_0
    const-string v2, "cn.nubia.oauthsdk.IOAuthCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 241
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    :goto_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 248
    invoke-static {}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->getDefaultImpl()Lcn/nubia/oauthsdk/IOAuthCallBack;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 249
    invoke-static {}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->getDefaultImpl()Lcn/nubia/oauthsdk/IOAuthCallBack;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/IOAuthCallBack;->onCode(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 252
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    throw p0
.end method

.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 164
    :try_start_0
    const-string v2, "cn.nubia.oauthsdk.IOAuthCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {p1, v0, v3}, Lcn/nubia/oauthsdk/OAuthError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    :goto_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 173
    invoke-static {}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->getDefaultImpl()Lcn/nubia/oauthsdk/IOAuthCallBack;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 174
    invoke-static {}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->getDefaultImpl()Lcn/nubia/oauthsdk/IOAuthCallBack;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/IOAuthCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 177
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    throw p0
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 189
    :try_start_0
    const-string v2, "cn.nubia.oauthsdk.IOAuthCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 191
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {p1, v0, v2}, Lcn/nubia/oauthsdk/OAuthToken;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    :goto_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 198
    invoke-static {}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->getDefaultImpl()Lcn/nubia/oauthsdk/IOAuthCallBack;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 199
    invoke-static {}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->getDefaultImpl()Lcn/nubia/oauthsdk/IOAuthCallBack;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/IOAuthCallBack;->onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 202
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 207
    throw p0
.end method

.method public onToken(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 264
    :try_start_0
    const-string v2, "cn.nubia.oauthsdk.IOAuthCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 266
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    :goto_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 273
    invoke-static {}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->getDefaultImpl()Lcn/nubia/oauthsdk/IOAuthCallBack;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 274
    invoke-static {}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->getDefaultImpl()Lcn/nubia/oauthsdk/IOAuthCallBack;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/IOAuthCallBack;->onToken(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 277
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw p0
.end method

.method public onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 214
    :try_start_0
    const-string v2, "cn.nubia.oauthsdk.IOAuthCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 216
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    invoke-virtual {p1, v0, v2}, Lcn/nubia/oauthsdk/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    :goto_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 223
    invoke-static {}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->getDefaultImpl()Lcn/nubia/oauthsdk/IOAuthCallBack;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 224
    invoke-static {}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->getDefaultImpl()Lcn/nubia/oauthsdk/IOAuthCallBack;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/IOAuthCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 227
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    throw p0
.end method

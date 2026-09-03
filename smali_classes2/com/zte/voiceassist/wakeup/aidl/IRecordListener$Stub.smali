.class public abstract Lcom/zte/voiceassist/wakeup/aidl/IRecordListener$Stub;
.super Landroid/os/Binder;
.source "IRecordListener.java"

# interfaces
.implements Lcom/zte/voiceassist/wakeup/aidl/IRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/voiceassist/wakeup/aidl/IRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/voiceassist/wakeup/aidl/IRecordListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onRecordPermissionOk:I = 0x2

.field static final TRANSACTION_volumeUpdate:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "com.zte.voiceassist.wakeup.aidl.IRecordListener"

    invoke-virtual {p0, p0, v0}, Lcom/zte/voiceassist/wakeup/aidl/IRecordListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/voiceassist/wakeup/aidl/IRecordListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    const-string v0, "com.zte.voiceassist.wakeup.aidl.IRecordListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    instance-of v1, v0, Lcom/zte/voiceassist/wakeup/aidl/IRecordListener;

    if-eqz v1, :cond_1

    .line 45
    check-cast v0, Lcom/zte/voiceassist/wakeup/aidl/IRecordListener;

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Lcom/zte/voiceassist/wakeup/aidl/IRecordListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zte/voiceassist/wakeup/aidl/IRecordListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const-string v0, "com.zte.voiceassist.wakeup.aidl.IRecordListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 57
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/zte/voiceassist/wakeup/aidl/IRecordListener$Stub;->onRecordPermissionOk()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/zte/voiceassist/wakeup/aidl/IRecordListener$Stub;->volumeUpdate(I)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    .line 63
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method

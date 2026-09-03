.class public Lcom/zte/wakeup/training/callback/SimpleVolumeCallback;
.super Lcom/zte/voiceassist/wakeup/aidl/IRecordListener$Stub;
.source "SimpleVolumeCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/zte/voiceassist/wakeup/aidl/IRecordListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onRecordPermissionOk()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public volumeUpdate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

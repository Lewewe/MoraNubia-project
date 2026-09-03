.class public interface abstract Lcom/zte/voiceassist/wakeup/aidl/IRecordListener;
.super Ljava/lang/Object;
.source "IRecordListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/voiceassist/wakeup/aidl/IRecordListener$Stub;,
        Lcom/zte/voiceassist/wakeup/aidl/IRecordListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.zte.voiceassist.wakeup.aidl.IRecordListener"


# virtual methods
.method public abstract onRecordPermissionOk()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract volumeUpdate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

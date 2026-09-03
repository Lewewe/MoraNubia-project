.class public interface abstract Lcom/zte/voiceassist/wakeup/aidl/ITrainCallback;
.super Ljava/lang/Object;
.source "ITrainCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/voiceassist/wakeup/aidl/ITrainCallback$Stub;,
        Lcom/zte/voiceassist/wakeup/aidl/ITrainCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.zte.voiceassist.wakeup.aidl.ITrainCallback"


# virtual methods
.method public abstract onFail(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

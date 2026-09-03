.class public interface abstract Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;
.super Ljava/lang/Object;
.source "SharedMemoryDeathRecipient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;,
        Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.zte.aimodel.sharedmemory.SharedMemoryDeathRecipient"


# virtual methods
.method public abstract onCancelResultReceived(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTextResultReceived(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;
.super Ljava/lang/Object;
.source "IGameAssistClientCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/gameassist/aiagent/IGameAssistClientCallback$Stub;,
        Lcom/zte/gameassist/aiagent/IGameAssistClientCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.zte.gameassist.aiagent.IGameAssistClientCallback"


# virtual methods
.method public abstract onReceivedCallback(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

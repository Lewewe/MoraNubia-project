.class public interface abstract Lcom/zte/aimodel/spkrecognition/ISPKRecognitionCallback;
.super Ljava/lang/Object;
.source "ISPKRecognitionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/spkrecognition/ISPKRecognitionCallback$Stub;,
        Lcom/zte/aimodel/spkrecognition/ISPKRecognitionCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.zte.aimodel.spkrecognition.ISPKRecognitionCallback"


# virtual methods
.method public abstract onCancelResultReceived(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

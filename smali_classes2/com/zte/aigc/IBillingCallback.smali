.class public interface abstract Lcom/zte/aigc/IBillingCallback;
.super Ljava/lang/Object;
.source "IBillingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aigc/IBillingCallback$_Parcel;,
        Lcom/zte/aigc/IBillingCallback$Stub;,
        Lcom/zte/aigc/IBillingCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.zte.aigc.IBillingCallback"


# virtual methods
.method public abstract onUserLoginResult(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUserLoginStateChanged(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

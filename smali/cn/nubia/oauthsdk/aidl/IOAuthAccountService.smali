.class public interface abstract Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;
.super Ljava/lang/Object;
.source "IOAuthAccountService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;,
        Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Default;
    }
.end annotation


# virtual methods
.method public abstract appWebSynlogin(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCode(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getToken(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

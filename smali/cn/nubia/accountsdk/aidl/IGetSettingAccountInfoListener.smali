.class public interface abstract Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;
.super Ljava/lang/Object;
.source "IGetSettingAccountInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Stub;,
        Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Lcn/nubia/accountsdk/aidl/SettingAccountInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onException(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

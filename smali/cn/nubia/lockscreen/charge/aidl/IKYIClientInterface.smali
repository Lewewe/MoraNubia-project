.class public interface abstract Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;
.super Ljava/lang/Object;
.source "IKYIClientInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface$Stub;,
        Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.lockscreen.charge.aidl.IKYIClientInterface"


# virtual methods
.method public abstract onCreate(Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDistroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHide()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onShow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

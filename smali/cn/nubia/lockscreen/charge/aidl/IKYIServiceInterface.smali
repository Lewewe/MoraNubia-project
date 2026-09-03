.class public interface abstract Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface;
.super Ljava/lang/Object;
.source "IKYIServiceInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface$Stub;,
        Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.lockscreen.charge.aidl.IKYIServiceInterface"


# virtual methods
.method public abstract closeKYIWindow(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isShow()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Lcn/nubia/binder/IBinderService;
.super Ljava/lang/Object;
.source "IBinderService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/binder/IBinderService$Stub;,
        Lcn/nubia/binder/IBinderService$Default;
    }
.end annotation


# virtual methods
.method public abstract queryBinder(I)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

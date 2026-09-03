.class public abstract Lcn/nubia/binder/IBinderService$Stub;
.super Landroid/os/Binder;
.source "IBinderService.java"

# interfaces
.implements Lcn/nubia/binder/IBinderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/binder/IBinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/binder/IBinderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.binder.IBinderService"

.field static final TRANSACTION_queryBinder:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "cn.nubia.binder.IBinderService"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/binder/IBinderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/binder/IBinderService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    const-string v0, "cn.nubia.binder.IBinderService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    instance-of v1, v0, Lcn/nubia/binder/IBinderService;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Lcn/nubia/binder/IBinderService;

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Lcn/nubia/binder/IBinderService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/binder/IBinderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcn/nubia/binder/IBinderService;
    .locals 1

    .line 120
    sget-object v0, Lcn/nubia/binder/IBinderService$Stub$Proxy;->sDefaultImpl:Lcn/nubia/binder/IBinderService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcn/nubia/binder/IBinderService;)Z
    .locals 1

    .line 113
    sget-object v0, Lcn/nubia/binder/IBinderService$Stub$Proxy;->sDefaultImpl:Lcn/nubia/binder/IBinderService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 114
    sput-object p0, Lcn/nubia/binder/IBinderService$Stub$Proxy;->sDefaultImpl:Lcn/nubia/binder/IBinderService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 50
    const-string v1, "cn.nubia.binder.IBinderService"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 54
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 59
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Lcn/nubia/binder/IBinderService$Stub;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p0

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0
.end method

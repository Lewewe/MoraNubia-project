.class public abstract Lcom/zte/aigc/IBillingManager$Stub;
.super Landroid/os/Binder;
.source "IBillingManager.java"

# interfaces
.implements Lcom/zte/aigc/IBillingManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aigc/IBillingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aigc/IBillingManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_call:I = 0x1

.field static final TRANSACTION_getUserBitmap:I = 0x2

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "com.zte.aigc.IBillingManager"

    invoke-virtual {p0, p0, v0}, Lcom/zte/aigc/IBillingManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/aigc/IBillingManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_0
    const-string v0, "com.zte.aigc.IBillingManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    instance-of v1, v0, Lcom/zte/aigc/IBillingManager;

    if-eqz v1, :cond_1

    .line 87
    check-cast v0, Lcom/zte/aigc/IBillingManager;

    return-object v0

    .line 89
    :cond_1
    new-instance v0, Lcom/zte/aigc/IBillingManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zte/aigc/IBillingManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    .line 98
    const-string v0, "com.zte.aigc.IBillingManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 140
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/aigc/IBillingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/aigc/IBillingCallback;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/zte/aigc/IBillingManager$Stub;->unregisterCallback(Lcom/zte/aigc/IBillingCallback;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/aigc/IBillingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/aigc/IBillingCallback;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/zte/aigc/IBillingManager$Stub;->registerCallback(Lcom/zte/aigc/IBillingCallback;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/zte/aigc/IBillingManager$Stub;->getUserBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-static {p3, p0, v1}, Lcom/zte/aigc/IBillingManager$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 116
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/zte/aigc/IBillingManager$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/zte/aigc/IBillingManager$Stub;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-static {p3, p0, v1}, Lcom/zte/aigc/IBillingManager$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_0
    return v1

    .line 105
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method

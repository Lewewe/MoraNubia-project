.class public abstract Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub;
.super Landroid/os/Binder;
.source "IDigitalHumanClientCallback.java"

# interfaces
.implements Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onHumanInited:I = 0x1

.field static final TRANSACTION_onMotionStart:I = 0x4

.field static final TRANSACTION_onMotionStop:I = 0x5

.field static final TRANSACTION_onSpeakStart:I = 0x2

.field static final TRANSACTION_onSpeakStop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "cn.nubia.redmagickyi.digitalhuman.IDigitalHumanClientCallback"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_0
    const-string v0, "cn.nubia.redmagickyi.digitalhuman.IDigitalHumanClientCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    instance-of v1, v0, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    if-eqz v1, :cond_1

    .line 82
    check-cast v0, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    return-object v0

    .line 84
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 93
    const-string v0, "cn.nubia.redmagickyi.digitalhuman.IDigitalHumanClientCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 143
    :cond_1
    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    .line 144
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub;->onMotionStop(Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 133
    :cond_2
    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub;->onMotionStart(Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 125
    :cond_3
    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    .line 126
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub;->onSpeakStop(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 115
    :cond_4
    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub;->onSpeakStart(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 108
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub;->onHumanInited()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    .line 100
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method

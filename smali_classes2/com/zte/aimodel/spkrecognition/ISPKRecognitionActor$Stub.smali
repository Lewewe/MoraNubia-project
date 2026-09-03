.class public abstract Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor$Stub;
.super Landroid/os/Binder;
.source "ISPKRecognitionActor.java"

# interfaces
.implements Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deinit:I = 0x7

.field static final TRANSACTION_getSpkid:I = 0x4

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_isSpkExist:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x5

.field static final TRANSACTION_removeSpkid:I = 0x3

.field static final TRANSACTION_trainSpkid:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.zte.aimodel.spkrecognition.ISPKRecognitionActor"

    invoke-virtual {p0, p0, v0}, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    const-string v0, "com.zte.aimodel.spkrecognition.ISPKRecognitionActor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    instance-of v1, v0, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor;

    if-eqz v1, :cond_1

    .line 67
    check-cast v0, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor;

    return-object v0

    .line 69
    :cond_1
    new-instance v0, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 78
    const-string v0, "com.zte.aimodel.spkrecognition.ISPKRecognitionActor"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor$Stub;->deinit()V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor$Stub;->isSpkExist()Z

    move-result p0

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 129
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/aimodel/spkrecognition/ISPKRecognitionCallback;

    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor$Stub;->registerCallback(Lcom/zte/aimodel/spkrecognition/ISPKRecognitionCallback;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 119
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor$Stub;->getSpkid([B)Ljava/lang/String;

    move-result-object p0

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor$Stub;->removeSpkid(Ljava/lang/String;)I

    move-result p0

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, p1, p4}, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor$Stub;->trainSpkid(Ljava/lang/String;[B)I

    move-result p0

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    :pswitch_6
    invoke-virtual {p0}, Lcom/zte/aimodel/spkrecognition/ISPKRecognitionActor$Stub;->init()I

    move-result p0

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

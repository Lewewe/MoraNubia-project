.class public abstract Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub;
.super Landroid/os/Binder;
.source "IVoiceTranslationActor.java"

# interfaces
.implements Lcom/zte/aimodel/vt/IVoiceTranslationActor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/vt/IVoiceTranslationActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deinit:I = 0x9

.field static final TRANSACTION_getReadEndOfPipe:I = 0x5

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_languageUpdate:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x7

.field static final TRANSACTION_registerCaption:I = 0x8

.field static final TRANSACTION_setVoiceName:I = 0x6

.field static final TRANSACTION_startVoiceCallTranslation:I = 0x2

.field static final TRANSACTION_stopVoiceCallTranslation:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "com.zte.aimodel.vt.IVoiceTranslationActor"

    invoke-virtual {p0, p0, v0}, Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/aimodel/vt/IVoiceTranslationActor;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_0
    const-string v0, "com.zte.aimodel.vt.IVoiceTranslationActor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    instance-of v1, v0, Lcom/zte/aimodel/vt/IVoiceTranslationActor;

    if-eqz v1, :cond_1

    .line 70
    check-cast v0, Lcom/zte/aimodel/vt/IVoiceTranslationActor;

    return-object v0

    .line 72
    :cond_1
    new-instance v0, Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 81
    const-string v0, "com.zte.aimodel.vt.IVoiceTranslationActor"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub;->deinit()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 153
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/aimodel/caption/ICaptionActor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/aimodel/caption/ICaptionActor;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub;->registerCaption(Lcom/zte/aimodel/caption/ICaptionActor;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/aimodel/vt/IVoiceTranslationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/aimodel/vt/IVoiceTranslationCallback;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub;->registerCallback(Lcom/zte/aimodel/vt/IVoiceTranslationCallback;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 135
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub;->setVoiceName(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 127
    :pswitch_4
    invoke-virtual {p0}, Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub;->getReadEndOfPipe()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 117
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1, p4}, Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub;->languageUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 110
    :pswitch_6
    invoke-virtual {p0}, Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub;->stopVoiceCallTranslation()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    :pswitch_7
    invoke-virtual {p0}, Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub;->startVoiceCallTranslation()V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, p1, p4}, Lcom/zte/aimodel/vt/IVoiceTranslationActor$Stub;->init(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

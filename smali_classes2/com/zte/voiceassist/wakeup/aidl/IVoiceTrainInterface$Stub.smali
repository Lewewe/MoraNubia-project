.class public abstract Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;
.super Landroid/os/Binder;
.source "IVoiceTrainInterface.java"

# interfaces
.implements Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createSmModel:I = 0x9

.field static final TRANSACTION_getKeyPhrase:I = 0x3

.field static final TRANSACTION_getRecordTimes:I = 0x2

.field static final TRANSACTION_initForTranInBg:I = 0x1

.field static final TRANSACTION_resetRecording:I = 0x6

.field static final TRANSACTION_setTrainingRecordingParams:I = 0x4

.field static final TRANSACTION_setTrainingRecordingParamsNew:I = 0xa

.field static final TRANSACTION_startRecording:I = 0x7

.field static final TRANSACTION_stopRecording:I = 0x5

.field static final TRANSACTION_verifyRecording:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "com.zte.voiceassist.wakeup.aidl.IVoiceTrainInterface"

    invoke-virtual {p0, p0, v0}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    const-string v0, "com.zte.voiceassist.wakeup.aidl.IVoiceTrainInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    instance-of v1, v0, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    if-eqz v1, :cond_1

    .line 76
    check-cast v0, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    return-object v0

    .line 78
    :cond_1
    new-instance v0, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 87
    const-string v0, "com.zte.voiceassist.wakeup.aidl.IVoiceTrainInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 167
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 169
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;->setTrainingRecordingParamsNew(ZLjava/lang/String;)Z

    move-result p0

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 159
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/voiceassist/wakeup/aidl/ITrainCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/voiceassist/wakeup/aidl/ITrainCallback;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;->createSmModel(Lcom/zte/voiceassist/wakeup/aidl/ITrainCallback;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 151
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/voiceassist/wakeup/aidl/ITrainCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/voiceassist/wakeup/aidl/ITrainCallback;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;->verifyRecording(Lcom/zte/voiceassist/wakeup/aidl/ITrainCallback;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 142
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/voiceassist/wakeup/aidl/IRecordListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/voiceassist/wakeup/aidl/IRecordListener;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;->startRecording(Lcom/zte/voiceassist/wakeup/aidl/IRecordListener;)I

    move-result p0

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 135
    :pswitch_4
    invoke-virtual {p0}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;->resetRecording()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 129
    :pswitch_5
    invoke-virtual {p0}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;->stopRecording()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 122
    :pswitch_6
    invoke-virtual {p0}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;->setTrainingRecordingParams()Z

    move-result p0

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 115
    :pswitch_7
    invoke-virtual {p0}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;->getKeyPhrase()Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :pswitch_8
    invoke-virtual {p0}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;->getRecordTimes()I

    move-result p0

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 102
    :pswitch_9
    invoke-virtual {p0}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;->initForTranInBg()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return v1

    .line 94
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

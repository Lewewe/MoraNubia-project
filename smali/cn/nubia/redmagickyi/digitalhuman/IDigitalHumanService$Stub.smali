.class public abstract Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;
.super Landroid/os/Binder;
.source "IDigitalHumanService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAvatarHeight:I = 0x14

.field static final TRANSACTION_getAvatarLayoutParams:I = 0x15

.field static final TRANSACTION_getAvatarWidth:I = 0x13

.field static final TRANSACTION_getHumanScaleV2:I = 0x19

.field static final TRANSACTION_getScene:I = 0x7

.field static final TRANSACTION_isHumanInited:I = 0x3

.field static final TRANSACTION_isHumanRendered:I = 0x5

.field static final TRANSACTION_onSurfaceChanged:I = 0x9

.field static final TRANSACTION_onSurfaceCreated:I = 0x8

.field static final TRANSACTION_onSurfaceDestroyed:I = 0xa

.field static final TRANSACTION_onTouchEvent:I = 0xb

.field static final TRANSACTION_pauseMotion:I = 0xe

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_resumeMotion:I = 0xd

.field static final TRANSACTION_setHumanRendered:I = 0x4

.field static final TRANSACTION_setHumanRotation:I = 0x12

.field static final TRANSACTION_setHumanScale:I = 0x17

.field static final TRANSACTION_setHumanScaleV2:I = 0x18

.field static final TRANSACTION_setSDKVersionCode:I = 0x16

.field static final TRANSACTION_startMotion:I = 0xc

.field static final TRANSACTION_startSpeak:I = 0x10

.field static final TRANSACTION_stopMotion:I = 0xf

.field static final TRANSACTION_stopSpeak:I = 0x11

.field static final TRANSACTION_switchScene:I = 0x6

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 163
    const-string v0, "cn.nubia.redmagickyi.digitalhuman.IDigitalHumanService"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    const-string v0, "cn.nubia.redmagickyi.digitalhuman.IDigitalHumanService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    instance-of v1, v0, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    if-eqz v1, :cond_1

    .line 176
    check-cast v0, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    return-object v0

    .line 178
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    const-string v0, "cn.nubia.redmagickyi.digitalhuman.IDigitalHumanService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 188
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 412
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 405
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->getHumanScaleV2()Ljava/lang/String;

    move-result-object p0

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    move-object v2, p0

    .line 399
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->setHumanScaleV2(FFFFF)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 380
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 383
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->setHumanScale(FF)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 372
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 373
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->setSDKVersionCode(I)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 361
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 364
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->getAvatarLayoutParams(FF)[F

    move-result-object p0

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_0

    .line 353
    :pswitch_5
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->getAvatarHeight()I

    move-result p0

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 346
    :pswitch_6
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->getAvatarWidth()I

    move-result p0

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 339
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 340
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->setHumanRotation(F)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 332
    :pswitch_8
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->stopSpeak()V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 325
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->startSpeak(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 318
    :pswitch_a
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->stopMotion()V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 312
    :pswitch_b
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->pauseMotion()V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 306
    :pswitch_c
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->resumeMotion()V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 296
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 298
    sget-object p4, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    .line 299
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->startMotion(ILcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)Z

    move-result p0

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 288
    :pswitch_e
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 289
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 278
    :pswitch_f
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 280
    sget-object p4, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    .line 281
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->onSurfaceDestroyed(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 264
    :pswitch_10
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 266
    sget-object p4, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 271
    invoke-virtual {p0, p1, p4, v0, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->onSurfaceChanged(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;II)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 254
    :pswitch_11
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 256
    sget-object p4, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    .line 257
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->onSurfaceCreated(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 246
    :pswitch_12
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->getScene()I

    move-result p0

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 239
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 240
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->switchScene(I)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 231
    :pswitch_14
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->isHumanRendered()Z

    move-result p0

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 225
    :pswitch_15
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->setHumanRendered()V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 218
    :pswitch_16
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->isHumanInited()Z

    move-result p0

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 211
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->unregisterCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 203
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    move-result-object p1

    .line 204
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->registerCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    .line 194
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

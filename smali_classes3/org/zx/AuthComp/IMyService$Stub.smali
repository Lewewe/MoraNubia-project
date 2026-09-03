.class public abstract Lorg/zx/AuthComp/IMyService$Stub;
.super Landroid/os/Binder;
.source "IMyService.java"

# interfaces
.implements Lorg/zx/AuthComp/IMyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zx/AuthComp/IMyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/zx/AuthComp/IMyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addSnsAccount:I = 0x18

.field static final TRANSACTION_checkUserEmail:I = 0x15

.field static final TRANSACTION_checkUserMobile:I = 0x16

.field static final TRANSACTION_createBaiduDiskAccount:I = 0xb

.field static final TRANSACTION_credit:I = 0x24

.field static final TRANSACTION_deleteToken:I = 0x7

.field static final TRANSACTION_getJPayInfo:I = 0x1f

.field static final TRANSACTION_getJPayRecordInfo:I = 0x1e

.field static final TRANSACTION_getToken:I = 0x8

.field static final TRANSACTION_getTokenByApp:I = 0x2d

.field static final TRANSACTION_getUser:I = 0x9

.field static final TRANSACTION_getUserImage:I = 0x1b

.field static final TRANSACTION_getUserImage2:I = 0x2e

.field static final TRANSACTION_getUserPwdByEmail:I = 0x13

.field static final TRANSACTION_getUserPwdByMobile:I = 0x12

.field static final TRANSACTION_loginByToken:I = 0xa

.field static final TRANSACTION_loginByUserInfo:I = 0x17

.field static final TRANSACTION_modifyUserInfo:I = 0x14

.field static final TRANSACTION_modifyUserPwd:I = 0x11

.field static final TRANSACTION_queryPayLog:I = 0x27

.field static final TRANSACTION_registerUserInfo:I = 0x10

.field static final TRANSACTION_requestToken:I = 0xf

.field static final TRANSACTION_requestVerifyCodeImage:I = 0xd

.field static final TRANSACTION_setServerAddr:I = 0xe

.field static final TRANSACTION_silentFastRegister:I = 0x21

.field static final TRANSACTION_silentFastRegister2:I = 0x2a

.field static final TRANSACTION_silentLogin:I = 0x22

.field static final TRANSACTION_silentLogin2:I = 0x2b

.field static final TRANSACTION_silentRegister:I = 0x20

.field static final TRANSACTION_silentRegister2:I = 0x29

.field static final TRANSACTION_startAccountManagerActivity:I = 0x1

.field static final TRANSACTION_startAddAccountActivity:I = 0x2

.field static final TRANSACTION_startAddAccountActivityWangqin:I = 0x23

.field static final TRANSACTION_startAddMobileActivity:I = 0x28

.field static final TRANSACTION_startCreditPayActivity:I = 0x1c

.field static final TRANSACTION_startGetPwdActivity:I = 0x4

.field static final TRANSACTION_startGuidLoginActivity:I = 0x31

.field static final TRANSACTION_startJPayActivity:I = 0x1d

.field static final TRANSACTION_startLoginActivity:I = 0x1a

.field static final TRANSACTION_startModifyInfoActivity:I = 0x5

.field static final TRANSACTION_startModifyPwdActivity:I = 0x6

.field static final TRANSACTION_startPayment:I = 0x26

.field static final TRANSACTION_startRegisterActivity:I = 0x3

.field static final TRANSACTION_startRegisterMainActivity:I = 0x19

.field static final TRANSACTION_startRegisterVipActivity:I = 0x25

.field static final TRANSACTION_startRestrictLoginActivity:I = 0x2f

.field static final TRANSACTION_startSetPwdActivity:I = 0x30

.field static final TRANSACTION_startSnsBindMobileActivity:I = 0x2c

.field static final TRANSACTION_updateBaiduDiskAccount:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 215
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 216
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p0, p0, v0}, Lorg/zx/AuthComp/IMyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/zx/AuthComp/IMyService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 227
    :cond_0
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    instance-of v1, v0, Lorg/zx/AuthComp/IMyService;

    if-eqz v1, :cond_1

    .line 229
    check-cast v0, Lorg/zx/AuthComp/IMyService;

    return-object v0

    .line 231
    :cond_1
    new-instance v0, Lorg/zx/AuthComp/IMyService$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/zx/AuthComp/IMyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    const-string v0, "org.zx.AuthComp.IMyService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 241
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 773
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 766
    :pswitch_0
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startGuidLoginActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 759
    :pswitch_1
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startSetPwdActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 752
    :pswitch_2
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startRestrictLoginActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 745
    :pswitch_3
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->getUserImage2()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 731
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 738
    invoke-virtual {p0, p1, p4, v0, p2}, Lorg/zx/AuthComp/IMyService$Stub;->getTokenByApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 739
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 723
    :pswitch_5
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startSnsBindMobileActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 707
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 716
    invoke-virtual/range {v2 .. v7}, Lorg/zx/AuthComp/IMyService$Stub;->silentLogin2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 692
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 699
    invoke-virtual {p0, p1, p4, v0, p2}, Lorg/zx/AuthComp/IMyService$Stub;->silentFastRegister2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 673
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    .line 684
    invoke-virtual/range {v2 .. v8}, Lorg/zx/AuthComp/IMyService$Stub;->silentRegister2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 665
    :pswitch_9
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startAddMobileActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 649
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 658
    invoke-virtual/range {v2 .. v7}, Lorg/zx/AuthComp/IMyService$Stub;->queryPayLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 641
    :pswitch_b
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startPayment()Landroid/os/Bundle;

    move-result-object p0

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 634
    :pswitch_c
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startRegisterVipActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 618
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 627
    invoke-virtual/range {v2 .. v7}, Lorg/zx/AuthComp/IMyService$Stub;->credit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 610
    :pswitch_e
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startAddAccountActivityWangqin()Landroid/os/Bundle;

    move-result-object p0

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 598
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 603
    invoke-virtual {p0, p1, p4, p2}, Lorg/zx/AuthComp/IMyService$Stub;->silentLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 587
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 590
    invoke-virtual {p0, p1, p2}, Lorg/zx/AuthComp/IMyService$Stub;->silentFastRegister(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 572
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 579
    invoke-virtual {p0, p1, p4, v0, p2}, Lorg/zx/AuthComp/IMyService$Stub;->silentRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 553
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    .line 564
    invoke-virtual/range {v2 .. v8}, Lorg/zx/AuthComp/IMyService$Stub;->getJPayInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 536
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 545
    invoke-virtual/range {v2 .. v7}, Lorg/zx/AuthComp/IMyService$Stub;->getJPayRecordInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 528
    :pswitch_14
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startJPayActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 521
    :pswitch_15
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startCreditPayActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 514
    :pswitch_16
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->getUserImage()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 507
    :pswitch_17
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startLoginActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 500
    :pswitch_18
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startRegisterMainActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 488
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 492
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 493
    invoke-virtual {p0, p1, p4, p2}, Lorg/zx/AuthComp/IMyService$Stub;->addSnsAccount(Ljava/lang/String;ZLjava/lang/String;)I

    move-result p0

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 475
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 480
    invoke-virtual {p0, p1, p4, p2}, Lorg/zx/AuthComp/IMyService$Stub;->loginByUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 466
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 467
    invoke-virtual {p0, p1}, Lorg/zx/AuthComp/IMyService$Stub;->checkUserMobile(Ljava/lang/String;)I

    move-result p0

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 457
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 458
    invoke-virtual {p0, p1}, Lorg/zx/AuthComp/IMyService$Stub;->checkUserEmail(Ljava/lang/String;)I

    move-result p0

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 438
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v2, p0

    .line 449
    invoke-virtual/range {v2 .. v8}, Lorg/zx/AuthComp/IMyService$Stub;->modifyUserInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 429
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 430
    invoke-virtual {p0, p1}, Lorg/zx/AuthComp/IMyService$Stub;->getUserPwdByEmail(Ljava/lang/String;)I

    move-result p0

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 420
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-virtual {p0, p1}, Lorg/zx/AuthComp/IMyService$Stub;->getUserPwdByMobile(Ljava/lang/String;)I

    move-result p0

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 407
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 412
    invoke-virtual {p0, p1, p4, p2}, Lorg/zx/AuthComp/IMyService$Stub;->modifyUserPwd(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 386
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    .line 399
    invoke-virtual/range {v2 .. v9}, Lorg/zx/AuthComp/IMyService$Stub;->registerUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 373
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 378
    invoke-virtual {p0, p1, p4, p2}, Lorg/zx/AuthComp/IMyService$Stub;->requestToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 365
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-virtual {p0, p1}, Lorg/zx/AuthComp/IMyService$Stub;->setServerAddr(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 354
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 357
    invoke-virtual {p0, p1, p2}, Lorg/zx/AuthComp/IMyService$Stub;->requestVerifyCodeImage(II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    .line 341
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 346
    invoke-virtual {p0, p1, p4, p2}, Lorg/zx/AuthComp/IMyService$Stub;->updateBaiduDiskAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 328
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 333
    invoke-virtual {p0, p1, p4, p2}, Lorg/zx/AuthComp/IMyService$Stub;->createBaiduDiskAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 319
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p0, p1}, Lorg/zx/AuthComp/IMyService$Stub;->loginByToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :pswitch_28
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->getUser()Ljava/lang/String;

    move-result-object p0

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :pswitch_29
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->getToken()Ljava/lang/String;

    move-result-object p0

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 297
    :pswitch_2a
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->deleteToken()I

    move-result p0

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 290
    :pswitch_2b
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startModifyPwdActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 283
    :pswitch_2c
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startModifyInfoActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 276
    :pswitch_2d
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startGetPwdActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 269
    :pswitch_2e
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startRegisterActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 262
    :pswitch_2f
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startAddAccountActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 255
    :pswitch_30
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startAccountManagerActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-static {p3, p0, v1}, Lorg/zx/AuthComp/IMyService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_1
    return v1

    .line 247
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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

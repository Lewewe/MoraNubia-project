.class public abstract Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;
.super Landroid/os/Binder;
.source "INBAccountService.java"

# interfaces
.implements Lcn/nubia/accountsdk/aidl/INBAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accountsdk/aidl/INBAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.accountsdk.aidl.INBAccountService"

.field static final TRANSACTION_appWebSynlogin:I = 0x7

.field static final TRANSACTION_checkPassword:I = 0x6

.field static final TRANSACTION_getBaiduAccountInfo:I = 0x4

.field static final TRANSACTION_getCloudSpace:I = 0x3

.field static final TRANSACTION_getSettingAccountInfo:I = 0x8

.field static final TRANSACTION_getSystemAccountInfo:I = 0x1

.field static final TRANSACTION_getThirdBindInfo:I = 0x2

.field static final TRANSACTION_startBindBaiduAccount:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "cn.nubia.accountsdk.aidl.INBAccountService"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/INBAccountService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_0
    const-string v0, "cn.nubia.accountsdk.aidl.INBAccountService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    instance-of v1, v0, Lcn/nubia/accountsdk/aidl/INBAccountService;

    if-eqz v1, :cond_1

    .line 73
    check-cast v0, Lcn/nubia/accountsdk/aidl/INBAccountService;

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcn/nubia/accountsdk/aidl/INBAccountService;
    .locals 1

    .line 377
    sget-object v0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;->sDefaultImpl:Lcn/nubia/accountsdk/aidl/INBAccountService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcn/nubia/accountsdk/aidl/INBAccountService;)Z
    .locals 1

    .line 370
    sget-object v0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;->sDefaultImpl:Lcn/nubia/accountsdk/aidl/INBAccountService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 371
    sput-object p0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;->sDefaultImpl:Lcn/nubia/accountsdk/aidl/INBAccountService;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    .line 84
    const-string v2, "cn.nubia.accountsdk.aidl.INBAccountService"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 162
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;

    move-result-object p1

    .line 165
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;->getSettingAccountInfo(Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 151
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;

    move-result-object p2

    .line 156
    invoke-virtual {p0, p1, p2}, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;->appWebSynlogin(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 140
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;

    move-result-object p2

    .line 145
    invoke-virtual {p0, p1, p2}, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;->checkPassword(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 129
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 133
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;

    move-result-object p2

    .line 134
    invoke-virtual {p0, p1, p2}, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;->startBindBaiduAccount(ZLcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 120
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;->getBaiduAccountInfo(Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 111
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;->getCloudSpace(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 102
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;->getThirdBindInfo(Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 93
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;

    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;->getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 88
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.class Lcn/nubia/redmagickyi/util/NubiaAccountManager$1;
.super Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;
.source "NubiaAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/NubiaAccountManager;->checkAccountLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

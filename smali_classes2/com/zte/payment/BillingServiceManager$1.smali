.class Lcom/zte/payment/BillingServiceManager$1;
.super Lcom/zte/aigc/IBillingCallback$Stub;
.source "BillingServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/payment/BillingServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/payment/BillingServiceManager;


# direct methods
.method constructor <init>(Lcom/zte/payment/BillingServiceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/zte/payment/BillingServiceManager$1;->this$0:Lcom/zte/payment/BillingServiceManager;

    invoke-direct {p0}, Lcom/zte/aigc/IBillingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserLoginResult(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const-string v0, "BillingServiceManager"

    if-eqz p1, :cond_1

    .line 46
    const-string v1, "user_longin_result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 47
    const-string v2, "longin_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    const-string v3, "recharge_result"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v3, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "onUserLoginResult user_longin_result={}, longin_state={}, rechargeState={}"

    invoke-static {v0, v2, p1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 51
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager$1;->this$0:Lcom/zte/payment/BillingServiceManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zte/payment/BillingServiceManager;->access$000(Lcom/zte/payment/BillingServiceManager;Z)V

    goto :goto_0

    .line 53
    :cond_0
    const-string p1, ""

    invoke-static {p1}, Lcom/zte/payment/common/PaymentUtils;->setUserId(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/zte/oss/UpLoadFileController;->getInstance()Lcom/zte/oss/UpLoadFileController;

    move-result-object p1

    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager$1;->this$0:Lcom/zte/payment/BillingServiceManager;

    invoke-static {p0}, Lcom/zte/payment/BillingServiceManager;->access$100(Lcom/zte/payment/BillingServiceManager;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/zte/oss/UpLoadFileController;->getOssConfig(Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;)V

    goto :goto_0

    .line 57
    :cond_1
    const-string p0, "onUserLoginResult result is null"

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUserLoginStateChanged(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const-string v0, "BillingServiceManager"

    if-eqz p1, :cond_2

    .line 64
    const-string v1, "user_longin_result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 65
    const-string v2, "longin_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    const-string v3, "recharge_result"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v3, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "onUserLoginStateChanged user_longin_result={}, longin_state={}\uff0crechargeState={}"

    invoke-static {v0, v3, p1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_0

    .line 68
    const-string p1, "longin_out"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    const-string p1, ""

    invoke-static {p1}, Lcom/zte/payment/common/PaymentUtils;->setUserId(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/zte/oss/UpLoadFileController;->getInstance()Lcom/zte/oss/UpLoadFileController;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/payment/BillingServiceManager$1;->this$0:Lcom/zte/payment/BillingServiceManager;

    invoke-static {v0}, Lcom/zte/payment/BillingServiceManager;->access$100(Lcom/zte/payment/BillingServiceManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/zte/oss/UpLoadFileController;->getOssConfig(Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;)V

    :cond_0
    if-nez v1, :cond_1

    .line 72
    const-string p1, "longin_in"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 73
    :cond_1
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager$1;->this$0:Lcom/zte/payment/BillingServiceManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zte/payment/BillingServiceManager;->access$000(Lcom/zte/payment/BillingServiceManager;Z)V

    goto :goto_0

    .line 76
    :cond_2
    const-string p0, "onUserLoginStateChanged result is null"

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

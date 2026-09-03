.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$1;
.super Ljava/lang/Object;
.source "Image2TextSession.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->checkEnableStartImage2TextSession(Landroid/content/Context;Lcom/zte/utils/MyRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

.field final synthetic val$runnable:Lcom/zte/utils/MyRunnable;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Lcom/zte/utils/MyRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$1;->val$runnable:Lcom/zte/utils/MyRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAccountLogin(Z)V
    .locals 3

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startWithCheck -> login: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$1;->val$runnable:Lcom/zte/utils/MyRunnable;

    invoke-interface {p0, v0}, Lcom/zte/utils/MyRunnable;->run(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/payment/BillingServiceManager;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$1;->val$runnable:Lcom/zte/utils/MyRunnable;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zte/utils/MyRunnable;->run(Ljava/lang/Object;)V

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;)Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    move-result-object p0

    .line 60
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;->status:I

    const/4 p1, -0x2

    if-eq p0, p1, :cond_2

    .line 66
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/payment/BillingServiceManager;->startUserLoginActivity()V

    goto :goto_0

    .line 71
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$1;->val$runnable:Lcom/zte/utils/MyRunnable;

    invoke-interface {p0, v0}, Lcom/zte/utils/MyRunnable;->run(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

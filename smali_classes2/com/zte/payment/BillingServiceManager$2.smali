.class Lcom/zte/payment/BillingServiceManager$2;
.super Ljava/lang/Object;
.source "BillingServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 82
    iput-object p1, p0, Lcom/zte/payment/BillingServiceManager$2;->this$0:Lcom/zte/payment/BillingServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 86
    const-string v0, "onServiceConnected className={}, service={}"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "BillingServiceManager"

    invoke-static {v1, v0, p1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lcom/zte/payment/BillingServiceManager$2;->this$0:Lcom/zte/payment/BillingServiceManager;

    invoke-static {p2}, Lcom/zte/aigc/IBillingManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/aigc/IBillingManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zte/payment/BillingServiceManager;->access$202(Lcom/zte/payment/BillingServiceManager;Lcom/zte/aigc/IBillingManager;)Lcom/zte/aigc/IBillingManager;

    .line 88
    iget-object p1, p0, Lcom/zte/payment/BillingServiceManager$2;->this$0:Lcom/zte/payment/BillingServiceManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/zte/payment/BillingServiceManager;->access$302(Lcom/zte/payment/BillingServiceManager;Z)Z

    .line 89
    iget-object p1, p0, Lcom/zte/payment/BillingServiceManager$2;->this$0:Lcom/zte/payment/BillingServiceManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/zte/payment/BillingServiceManager;->access$000(Lcom/zte/payment/BillingServiceManager;Z)V

    .line 90
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager$2;->this$0:Lcom/zte/payment/BillingServiceManager;

    invoke-static {p0}, Lcom/zte/payment/BillingServiceManager;->access$400(Lcom/zte/payment/BillingServiceManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 95
    const-string v0, "onServiceDisconnected  className={}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "BillingServiceManager"

    invoke-static {v1, v0, p1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object p1, p0, Lcom/zte/payment/BillingServiceManager$2;->this$0:Lcom/zte/payment/BillingServiceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zte/payment/BillingServiceManager;->access$202(Lcom/zte/payment/BillingServiceManager;Lcom/zte/aigc/IBillingManager;)Lcom/zte/aigc/IBillingManager;

    .line 97
    iget-object p1, p0, Lcom/zte/payment/BillingServiceManager$2;->this$0:Lcom/zte/payment/BillingServiceManager;

    invoke-static {p1}, Lcom/zte/payment/BillingServiceManager;->access$300(Lcom/zte/payment/BillingServiceManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/zte/payment/BillingServiceManager$2;->this$0:Lcom/zte/payment/BillingServiceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zte/payment/BillingServiceManager;->access$302(Lcom/zte/payment/BillingServiceManager;Z)Z

    .line 99
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager$2;->this$0:Lcom/zte/payment/BillingServiceManager;

    invoke-static {p0}, Lcom/zte/payment/BillingServiceManager;->access$100(Lcom/zte/payment/BillingServiceManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/payment/BillingServiceManager;->connect(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

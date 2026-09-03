.class public final synthetic Lcom/zte/payment/BillingServiceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/zte/payment/BillingServiceManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zte/payment/BillingServiceManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/payment/BillingServiceManager$$ExternalSyntheticLambda0;->f$0:Lcom/zte/payment/BillingServiceManager;

    iput-boolean p2, p0, Lcom/zte/payment/BillingServiceManager$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/zte/payment/BillingServiceManager$$ExternalSyntheticLambda0;->f$0:Lcom/zte/payment/BillingServiceManager;

    iget-boolean p0, p0, Lcom/zte/payment/BillingServiceManager$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/zte/payment/BillingServiceManager;->lambda$refreshUserStatus$0$com-zte-payment-BillingServiceManager(Z)V

    return-void
.end method

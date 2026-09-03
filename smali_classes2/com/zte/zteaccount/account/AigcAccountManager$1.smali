.class Lcom/zte/zteaccount/account/AigcAccountManager$1;
.super Ljava/lang/Object;
.source "AigcAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/AigcAccountManager;->getAccountInfo(Landroid/content/Context;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/AigcAccountManager;

.field final synthetic val$accountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/AigcAccountManager;Landroid/content/Context;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/zte/zteaccount/account/AigcAccountManager$1;->this$0:Lcom/zte/zteaccount/account/AigcAccountManager;

    iput-object p2, p0, Lcom/zte/zteaccount/account/AigcAccountManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/zte/zteaccount/account/AigcAccountManager$1;->val$accountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/zte/zteaccount/account/AigcAccountManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zteaccount/account/AigcAccountManager;->get(Landroid/content/Context;)Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zteaccount/account/AigcAccountManager;->access$000(Lcom/zte/zteaccount/account/AigcAccountManager;)Lcom/zte/zteaccount/account/AccountEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/zte/zteaccount/account/AigcAccountManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zteaccount/account/AigcAccountManager;->get(Landroid/content/Context;)Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zteaccount/account/AigcAccountManager;->access$000(Lcom/zte/zteaccount/account/AigcAccountManager;)Lcom/zte/zteaccount/account/AccountEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zteaccount/account/AigcAccountManager$1;->this$0:Lcom/zte/zteaccount/account/AigcAccountManager;

    new-instance v2, Lcom/zte/zteaccount/account/AigcAccountManager$DeepAccountInfoInterface;

    iget-object v3, p0, Lcom/zte/zteaccount/account/AigcAccountManager$1;->this$0:Lcom/zte/zteaccount/account/AigcAccountManager;

    iget-object p0, p0, Lcom/zte/zteaccount/account/AigcAccountManager$1;->val$accountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    invoke-direct {v2, v3, p0}, Lcom/zte/zteaccount/account/AigcAccountManager$DeepAccountInfoInterface;-><init>(Lcom/zte/zteaccount/account/AigcAccountManager;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    invoke-static {v1, v2}, Lcom/zte/zteaccount/account/AigcAccountManager;->access$102(Lcom/zte/zteaccount/account/AigcAccountManager;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/zte/zteaccount/account/AccountEntry;->getAccountInfo(Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

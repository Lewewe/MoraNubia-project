.class Lcom/zte/zteaccount/account/BaseAccountEntry$3;
.super Ljava/lang/Object;
.source "BaseAccountEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/BaseAccountEntry;->AccountResPonse(Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

.field final synthetic val$accountInfo:Lcom/zte/zteaccount/account/AccountInfo;

.field final synthetic val$infoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/BaseAccountEntry;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;Lcom/zte/zteaccount/account/AccountInfo;)V
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

    .line 116
    iput-object p1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$3;->this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

    iput-object p2, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$3;->val$infoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    iput-object p3, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$3;->val$accountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$3;->val$infoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$3;->val$accountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    invoke-interface {v0, p0}, Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;->AccountResPonse(Lcom/zte/zteaccount/account/AccountInfo;)V

    :cond_0
    return-void
.end method

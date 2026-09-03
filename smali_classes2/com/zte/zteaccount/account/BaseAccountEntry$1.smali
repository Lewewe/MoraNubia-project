.class Lcom/zte/zteaccount/account/BaseAccountEntry$1;
.super Ljava/lang/Object;
.source "BaseAccountEntry.java"

# interfaces
.implements Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/BaseAccountEntry;->getCloudToken(Lcom/zte/zteaccount/CloudTokenInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

.field final synthetic val$cloudTokenInterface:Lcom/zte/zteaccount/CloudTokenInterface;

.field final synthetic val$invokeThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/BaseAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/CloudTokenInterface;)V
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

    .line 75
    iput-object p1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

    iput-object p2, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->val$invokeThread:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->val$cloudTokenInterface:Lcom/zte/zteaccount/CloudTokenInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AccountResPonse(Lcom/zte/zteaccount/account/AccountInfo;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 79
    sget-object p1, Lcom/zte/aigc/common/ErrorCode;->ACCOUNT_NOT_LOGIN:Lcom/zte/aigc/common/ErrorCode;

    iget-object v1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

    iget-object v1, v1, Lcom/zte/zteaccount/account/BaseAccountEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/zte/aigc/common/ErrorCode;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AccountEntry"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

    iget-object v1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->val$invokeThread:Ljava/lang/Thread;

    iget-object p0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->val$cloudTokenInterface:Lcom/zte/zteaccount/CloudTokenInterface;

    invoke-static {p1, v1, v0, p0}, Lcom/zte/zteaccount/account/BaseAccountEntry;->access$000(Lcom/zte/zteaccount/account/BaseAccountEntry;Ljava/lang/Thread;Lcom/zte/aigc/vo/CloudToken;Lcom/zte/zteaccount/CloudTokenInterface;)V

    goto :goto_1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

    invoke-virtual {v1}, Lcom/zte/zteaccount/account/BaseAccountEntry;->loadLoalSaveCloudToken()Lcom/zte/aigc/vo/CloudToken;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/zte/zteaccount/account/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/zte/zteaccount/account/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/zte/aigc/vo/CloudToken;->getUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 87
    iget-object p1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

    iget-object v0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->val$invokeThread:Ljava/lang/Thread;

    iget-object p0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->val$cloudTokenInterface:Lcom/zte/zteaccount/CloudTokenInterface;

    invoke-static {p1, v0, v1, p0}, Lcom/zte/zteaccount/account/BaseAccountEntry;->access$000(Lcom/zte/zteaccount/account/BaseAccountEntry;Ljava/lang/Thread;Lcom/zte/aigc/vo/CloudToken;Lcom/zte/zteaccount/CloudTokenInterface;)V

    goto :goto_1

    .line 90
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

    invoke-virtual {p1}, Lcom/zte/zteaccount/account/BaseAccountEntry;->onGetCloudToken()Lcom/zte/aigc/vo/CloudToken;

    move-result-object v0
    :try_end_0
    .catch Lcom/zte/aigc/common/RequestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Lcom/zte/aigc/common/RequestException;->printStackTrace()V

    .line 95
    :goto_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

    iget-object v1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->val$invokeThread:Ljava/lang/Thread;

    iget-object p0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$1;->val$cloudTokenInterface:Lcom/zte/zteaccount/CloudTokenInterface;

    invoke-static {p1, v1, v0, p0}, Lcom/zte/zteaccount/account/BaseAccountEntry;->access$000(Lcom/zte/zteaccount/account/BaseAccountEntry;Ljava/lang/Thread;Lcom/zte/aigc/vo/CloudToken;Lcom/zte/zteaccount/CloudTokenInterface;)V

    :goto_1
    return-void
.end method

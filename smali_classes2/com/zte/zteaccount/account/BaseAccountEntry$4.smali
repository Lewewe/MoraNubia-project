.class Lcom/zte/zteaccount/account/BaseAccountEntry$4;
.super Ljava/lang/Object;
.source "BaseAccountEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/BaseAccountEntry;->onGetCloudToken(Ljava/lang/Thread;Lcom/zte/aigc/vo/CloudToken;Lcom/zte/zteaccount/CloudTokenInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

.field final synthetic val$cloudToken:Lcom/zte/aigc/vo/CloudToken;

.field final synthetic val$cloudTokenInterface:Lcom/zte/zteaccount/CloudTokenInterface;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/BaseAccountEntry;Lcom/zte/zteaccount/CloudTokenInterface;Lcom/zte/aigc/vo/CloudToken;)V
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

    .line 127
    iput-object p1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$4;->this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

    iput-object p2, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$4;->val$cloudTokenInterface:Lcom/zte/zteaccount/CloudTokenInterface;

    iput-object p3, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$4;->val$cloudToken:Lcom/zte/aigc/vo/CloudToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$4;->val$cloudTokenInterface:Lcom/zte/zteaccount/CloudTokenInterface;

    if-eqz v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$4;->val$cloudToken:Lcom/zte/aigc/vo/CloudToken;

    invoke-interface {v0, p0}, Lcom/zte/zteaccount/CloudTokenInterface;->onGetCloudToken(Lcom/zte/aigc/vo/CloudToken;)V

    :cond_0
    return-void
.end method

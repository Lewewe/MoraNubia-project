.class Lcom/zte/zteaccount/account/BaseAccountEntry$2;
.super Ljava/lang/Object;
.source "BaseAccountEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/BaseAccountEntry;->isAccountLogin(Ljava/lang/Thread;ZLcom/zte/zteaccount/AccountLoginInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

.field final synthetic val$isLogin:Z

.field final synthetic val$loginInterface:Lcom/zte/zteaccount/AccountLoginInterface;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/BaseAccountEntry;Lcom/zte/zteaccount/AccountLoginInterface;Z)V
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

    .line 105
    iput-object p1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$2;->this$0:Lcom/zte/zteaccount/account/BaseAccountEntry;

    iput-object p2, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$2;->val$loginInterface:Lcom/zte/zteaccount/AccountLoginInterface;

    iput-boolean p3, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$2;->val$isLogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$2;->val$loginInterface:Lcom/zte/zteaccount/AccountLoginInterface;

    if-eqz v0, :cond_0

    .line 109
    iget-boolean p0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry$2;->val$isLogin:Z

    invoke-interface {v0, p0}, Lcom/zte/zteaccount/AccountLoginInterface;->isAccountLogin(Z)V

    :cond_0
    return-void
.end method

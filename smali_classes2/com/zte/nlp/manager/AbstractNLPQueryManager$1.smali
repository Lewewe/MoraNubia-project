.class Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;
.super Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;
.source "AbstractNLPQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/nlp/manager/AbstractNLPQueryManager;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/nlp/manager/AbstractNLPQueryManager;

.field final synthetic val$confirmContent:Ljava/lang/String;

.field final synthetic val$history:Ljava/lang/String;

.field final synthetic val$requestText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/nlp/manager/AbstractNLPQueryManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->this$0:Lcom/zte/nlp/manager/AbstractNLPQueryManager;

    iput-object p2, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->val$requestText:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->val$history:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->val$confirmContent:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 89
    const-string p1, "NLPQueryManager"

    const-string v0, "nlp offline dismatch"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->this$0:Lcom/zte/nlp/manager/AbstractNLPQueryManager;

    iget-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->val$requestText:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->val$history:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->val$confirmContent:Ljava/lang/String;

    invoke-static {p1, v0, v1, p0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->access$300(Lcom/zte/nlp/manager/AbstractNLPQueryManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lcom/zte/nlp/model/NLPResponse;)V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nlp offline onSuccess, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->this$0:Lcom/zte/nlp/manager/AbstractNLPQueryManager;

    invoke-static {v1}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->access$000(Lcom/zte/nlp/manager/AbstractNLPQueryManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NLPQueryManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->this$0:Lcom/zte/nlp/manager/AbstractNLPQueryManager;

    invoke-static {v0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->access$000(Lcom/zte/nlp/manager/AbstractNLPQueryManager;)Z

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->this$0:Lcom/zte/nlp/manager/AbstractNLPQueryManager;

    invoke-static {v1}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->access$000(Lcom/zte/nlp/manager/AbstractNLPQueryManager;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->this$0:Lcom/zte/nlp/manager/AbstractNLPQueryManager;

    invoke-static {v1, p1}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->access$100(Lcom/zte/nlp/manager/AbstractNLPQueryManager;Lcom/zte/nlp/model/NLPResponse;)V

    goto :goto_1

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->this$0:Lcom/zte/nlp/manager/AbstractNLPQueryManager;

    invoke-static {p1}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->access$200(Lcom/zte/nlp/manager/AbstractNLPQueryManager;)V

    .line 81
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->this$0:Lcom/zte/nlp/manager/AbstractNLPQueryManager;

    invoke-static {p1}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->access$000(Lcom/zte/nlp/manager/AbstractNLPQueryManager;)Z

    move-result p1

    if-eq v0, p1, :cond_3

    .line 83
    iget-object p0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->this$0:Lcom/zte/nlp/manager/AbstractNLPQueryManager;

    invoke-virtual {p0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->cancel()V

    :cond_3
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 69
    check-cast p1, Lcom/zte/nlp/model/NLPResponse;

    invoke-virtual {p0, p1}, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;->onSuccess(Lcom/zte/nlp/model/NLPResponse;)V

    return-void
.end method

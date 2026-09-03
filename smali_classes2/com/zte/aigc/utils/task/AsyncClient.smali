.class public Lcom/zte/aigc/utils/task/AsyncClient;
.super Ljava/lang/Object;
.source "AsyncClient.java"


# instance fields
.field private final mZteExecutor:Lcom/zte/aigc/utils/task/ZteExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Lcom/zte/aigc/utils/task/ZteExecutor;->newSinglePool()Lcom/zte/aigc/utils/task/ZteExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aigc/utils/task/AsyncClient;->mZteExecutor:Lcom/zte/aigc/utils/task/ZteExecutor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/aigc/utils/task/AsyncClient;->mZteExecutor:Lcom/zte/aigc/utils/task/ZteExecutor;

    invoke-virtual {p0}, Lcom/zte/aigc/utils/task/ZteExecutor;->shutdown()V

    return-void
.end method

.method protected summitTask(Ljava/lang/Runnable;)V
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/zte/aigc/utils/task/AsyncClient;->mZteExecutor:Lcom/zte/aigc/utils/task/ZteExecutor;

    invoke-virtual {p0, p1}, Lcom/zte/aigc/utils/task/ZteExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

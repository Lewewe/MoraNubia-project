.class public Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;
.super Ljava/lang/Object;
.source "StreamClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/shareMemoryClient/StreamClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CommandTask"
.end annotation


# instance fields
.field public final command:Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

.field public data:[B

.field public index:I

.field public isFinal:Z

.field public final replyFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->command:Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    .line 171
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.class Lcom/google/mediapipe/components/FrameProcessor$1;
.super Ljava/lang/Object;
.source "FrameProcessor.java"

# interfaces
.implements Lcom/google/mediapipe/framework/PacketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mediapipe/components/FrameProcessor;->addVideoStreams(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/mediapipe/components/FrameProcessor;


# direct methods
.method constructor <init>(Lcom/google/mediapipe/components/FrameProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor$1;->this$0:Lcom/google/mediapipe/components/FrameProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/google/mediapipe/framework/Packet;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packet"
        }
    .end annotation

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor$1;->this$0:Lcom/google/mediapipe/components/FrameProcessor;

    invoke-static {v0}, Lcom/google/mediapipe/components/FrameProcessor;->access$000(Lcom/google/mediapipe/components/FrameProcessor;)Ljava/util/List;

    move-result-object v0

    .line 221
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/components/TextureFrameConsumer;

    .line 225
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getTextureFrame(Lcom/google/mediapipe/framework/Packet;)Lcom/google/mediapipe/framework/GraphTextureFrame;

    move-result-object v1

    .line 226
    const-string v2, "FrameProcessor"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    const-string v2, "FrameProcessor"

    const-string v3, "Output tex: %d width: %d height: %d to consumer %h"

    .line 231
    invoke-interface {v1}, Lcom/google/mediapipe/framework/TextureFrame;->getTextureName()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/mediapipe/framework/TextureFrame;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/mediapipe/framework/TextureFrame;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6, v0}, [Ljava/lang/Object;

    move-result-object v4

    .line 229
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    invoke-interface {v0, v1}, Lcom/google/mediapipe/components/TextureFrameConsumer;->onNewFrame(Lcom/google/mediapipe/framework/TextureFrame;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 221
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

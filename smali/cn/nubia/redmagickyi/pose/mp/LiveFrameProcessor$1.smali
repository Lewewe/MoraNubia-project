.class Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$1;
.super Ljava/lang/Object;
.source "LiveFrameProcessor.java"

# interfaces
.implements Lcom/google/mediapipe/framework/PacketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addVideoStreams(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$1;->this$0:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/google/mediapipe/framework/Packet;)V
    .locals 7

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$1;->this$0:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->access$000(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;)Ljava/util/List;

    move-result-object v0

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/components/TextureFrameConsumer;

    .line 138
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getTextureFrame(Lcom/google/mediapipe/framework/Packet;)Lcom/google/mediapipe/framework/GraphTextureFrame;

    move-result-object v1

    .line 139
    const-string v2, "FrameProcessor"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const-string v2, "FrameProcessor"

    const-string v3, "Output tex: %d width: %d height: %d to consumer %h"

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/GraphTextureFrame;->getTextureName()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/GraphTextureFrame;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/GraphTextureFrame;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6, v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    invoke-interface {v0, v1}, Lcom/google/mediapipe/components/TextureFrameConsumer;->onNewFrame(Lcom/google/mediapipe/framework/TextureFrame;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 132
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.class Lcom/google/mediapipe/components/FrameProcessor$2;
.super Ljava/lang/Object;
.source "FrameProcessor.java"

# interfaces
.implements Lcom/google/mediapipe/framework/PacketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mediapipe/components/FrameProcessor;->addAudioStreams(Ljava/lang/String;Ljava/lang/String;IID)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/mediapipe/components/FrameProcessor;

.field final synthetic val$audioFormat:Landroid/media/AudioFormat;


# direct methods
.method constructor <init>(Lcom/google/mediapipe/components/FrameProcessor;Landroid/media/AudioFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$audioFormat"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor$2;->this$0:Lcom/google/mediapipe/components/FrameProcessor;

    iput-object p2, p0, Lcom/google/mediapipe/components/FrameProcessor$2;->val$audioFormat:Landroid/media/AudioFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/google/mediapipe/framework/Packet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packet"
        }
    .end annotation

    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor$2;->this$0:Lcom/google/mediapipe/components/FrameProcessor;

    invoke-static {v0}, Lcom/google/mediapipe/components/FrameProcessor;->access$100(Lcom/google/mediapipe/components/FrameProcessor;)Ljava/util/List;

    move-result-object v0

    .line 285
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/components/AudioDataConsumer;

    .line 287
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getAudioByteData(Lcom/google/mediapipe/framework/Packet;)[B

    move-result-object v2

    .line 288
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 289
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Packet;->getTimestamp()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/mediapipe/components/FrameProcessor$2;->val$audioFormat:Landroid/media/AudioFormat;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/mediapipe/components/AudioDataConsumer;->onNewAudioData(Ljava/nio/ByteBuffer;JLandroid/media/AudioFormat;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 285
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

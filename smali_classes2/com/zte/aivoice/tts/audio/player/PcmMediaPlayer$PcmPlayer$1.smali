.class Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer$1;
.super Ljava/lang/Object;
.source "PcmMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->startPlay(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

.field final synthetic val$audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer$1;->this$1:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

    iput-object p2, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer$1;->val$audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer$1;->this$1:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer$1;->val$audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-static {v0, p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->access$200(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

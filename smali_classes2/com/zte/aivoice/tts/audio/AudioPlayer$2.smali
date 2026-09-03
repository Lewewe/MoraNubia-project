.class Lcom/zte/aivoice/tts/audio/AudioPlayer$2;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$2;->val$audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 188
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$2;->val$audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-static {v0, p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->access$100(Lcom/zte/aivoice/tts/audio/AudioPlayer;Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

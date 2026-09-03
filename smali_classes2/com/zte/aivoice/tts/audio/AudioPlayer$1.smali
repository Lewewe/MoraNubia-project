.class Lcom/zte/aivoice/tts/audio/AudioPlayer$1;
.super Lcom/zte/aivoice/tts/audio/AudioChecker;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/tts/audio/AudioPlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aivoice/tts/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/tts/audio/AudioPlayer;Landroid/content/Context;)V
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

    .line 32
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$1;->this$0:Lcom/zte/aivoice/tts/audio/AudioPlayer;

    invoke-direct {p0, p2}, Lcom/zte/aivoice/tts/audio/AudioChecker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public handleAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$1;->this$0:Lcom/zte/aivoice/tts/audio/AudioPlayer;

    invoke-static {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->access$100(Lcom/zte/aivoice/tts/audio/AudioPlayer;Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

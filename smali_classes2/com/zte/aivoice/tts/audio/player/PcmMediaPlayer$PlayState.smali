.class final enum Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;
.super Ljava/lang/Enum;
.source "PcmMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

.field public static final enum IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

.field public static final enum PAUSED:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

.field public static final enum PLAYING:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;


# direct methods
.method private static synthetic $values()[Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;
    .locals 3

    .line 27
    sget-object v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    sget-object v1, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->PLAYING:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    sget-object v2, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->PAUSED:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    filled-new-array {v0, v1, v2}, [Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->IDLE:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    .line 29
    new-instance v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    const-string v1, "PLAYING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->PLAYING:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    .line 30
    new-instance v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    const-string v1, "PAUSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->PAUSED:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    .line 27
    invoke-static {}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->$values()[Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    move-result-object v0

    sput-object v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->$VALUES:[Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    const-class v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    return-object p0
.end method

.method public static values()[Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;
    .locals 1

    .line 27
    sget-object v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->$VALUES:[Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    invoke-virtual {v0}, [Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;

    return-object v0
.end method

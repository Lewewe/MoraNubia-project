.class final enum Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;
.super Ljava/lang/Enum;
.source "VideoInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/solutioncore/VideoInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MediaPlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

.field public static final enum END:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

.field public static final enum IDLE:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

.field public static final enum PAUSED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

.field public static final enum PLAYBACK_COMPLETE:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

.field public static final enum PREPARED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

.field public static final enum PREPARING:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

.field public static final enum STARTED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

.field public static final enum STOPPED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 78
    new-instance v0, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->IDLE:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    .line 79
    new-instance v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    const-string v2, "PREPARING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PREPARING:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    .line 80
    new-instance v2, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    const-string v3, "PREPARED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PREPARED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    .line 81
    new-instance v3, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    const-string v4, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->STARTED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    .line 82
    new-instance v4, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    const-string v5, "PAUSED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PAUSED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    .line 83
    new-instance v5, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    const-string v6, "STOPPED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->STOPPED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    .line 84
    new-instance v6, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    const-string v7, "PLAYBACK_COMPLETE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PLAYBACK_COMPLETE:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    .line 85
    new-instance v7, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    const-string v8, "END"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->END:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    .line 77
    filled-new-array/range {v0 .. v7}, [Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->$VALUES:[Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

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
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 77
    const-class v0, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;
    .locals 1

    .line 77
    sget-object v0, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->$VALUES:[Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    invoke-virtual {v0}, [Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    return-object v0
.end method

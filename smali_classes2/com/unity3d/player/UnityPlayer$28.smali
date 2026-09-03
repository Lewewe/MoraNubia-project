.class synthetic Lcom/unity3d/player/UnityPlayer$28;
.super Ljava/lang/Object;
.source "UnityPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$unity3d$player$IPlayer$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 247
    invoke-static {}, Lcom/unity3d/player/IPlayer$Type;->values()[Lcom/unity3d/player/IPlayer$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/unity3d/player/UnityPlayer$28;->$SwitchMap$com$unity3d$player$IPlayer$Type:[I

    :try_start_0
    sget-object v1, Lcom/unity3d/player/IPlayer$Type;->TextureView:Lcom/unity3d/player/IPlayer$Type;

    invoke-virtual {v1}, Lcom/unity3d/player/IPlayer$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/unity3d/player/UnityPlayer$28;->$SwitchMap$com$unity3d$player$IPlayer$Type:[I

    sget-object v1, Lcom/unity3d/player/IPlayer$Type;->SurfaceView:Lcom/unity3d/player/IPlayer$Type;

    invoke-virtual {v1}, Lcom/unity3d/player/IPlayer$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

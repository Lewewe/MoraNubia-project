.class public final enum Lcom/unity3d/player/IPlayer$Type;
.super Ljava/lang/Enum;
.source "IPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/player/IPlayer$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/player/IPlayer$Type;

.field public static final enum SurfaceView:Lcom/unity3d/player/IPlayer$Type;

.field public static final enum TextureView:Lcom/unity3d/player/IPlayer$Type;


# direct methods
.method private static synthetic $values()[Lcom/unity3d/player/IPlayer$Type;
    .locals 2

    .line 4
    sget-object v0, Lcom/unity3d/player/IPlayer$Type;->SurfaceView:Lcom/unity3d/player/IPlayer$Type;

    sget-object v1, Lcom/unity3d/player/IPlayer$Type;->TextureView:Lcom/unity3d/player/IPlayer$Type;

    filled-new-array {v0, v1}, [Lcom/unity3d/player/IPlayer$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/unity3d/player/IPlayer$Type;

    const-string v1, "SurfaceView"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/IPlayer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/IPlayer$Type;->SurfaceView:Lcom/unity3d/player/IPlayer$Type;

    .line 8
    new-instance v0, Lcom/unity3d/player/IPlayer$Type;

    const-string v1, "TextureView"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/IPlayer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/IPlayer$Type;->TextureView:Lcom/unity3d/player/IPlayer$Type;

    .line 4
    invoke-static {}, Lcom/unity3d/player/IPlayer$Type;->$values()[Lcom/unity3d/player/IPlayer$Type;

    move-result-object v0

    sput-object v0, Lcom/unity3d/player/IPlayer$Type;->$VALUES:[Lcom/unity3d/player/IPlayer$Type;

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

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/player/IPlayer$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 4
    const-class v0, Lcom/unity3d/player/IPlayer$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/player/IPlayer$Type;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/player/IPlayer$Type;
    .locals 1

    .line 4
    sget-object v0, Lcom/unity3d/player/IPlayer$Type;->$VALUES:[Lcom/unity3d/player/IPlayer$Type;

    invoke-virtual {v0}, [Lcom/unity3d/player/IPlayer$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/player/IPlayer$Type;

    return-object v0
.end method

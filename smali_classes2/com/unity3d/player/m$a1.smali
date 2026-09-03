.class final enum Lcom/unity3d/player/m$a1;
.super Ljava/lang/Enum;
.source "m.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/player/m$a1;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/player/m$a1;

.field public static final enum a:Lcom/unity3d/player/m$a1;

.field public static final enum b:Lcom/unity3d/player/m$a1;

.field public static final enum c:Lcom/unity3d/player/m$a1;


# instance fields
.field i:I


# direct methods
.method private static synthetic $values()[Lcom/unity3d/player/m$a1;
    .locals 3

    .line 113
    sget-object v0, Lcom/unity3d/player/m$a1;->a:Lcom/unity3d/player/m$a1;

    sget-object v1, Lcom/unity3d/player/m$a1;->b:Lcom/unity3d/player/m$a1;

    sget-object v2, Lcom/unity3d/player/m$a1;->c:Lcom/unity3d/player/m$a1;

    filled-new-array {v0, v1, v2}, [Lcom/unity3d/player/m$a1;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 114
    new-instance v0, Lcom/unity3d/player/m$a1;

    const-string v1, "a"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/player/m$a1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/m$a1;->a:Lcom/unity3d/player/m$a1;

    new-instance v0, Lcom/unity3d/player/m$a1;

    const-string v1, "b"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/unity3d/player/m$a1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/m$a1;->b:Lcom/unity3d/player/m$a1;

    new-instance v0, Lcom/unity3d/player/m$a1;

    const-string v1, "c"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/player/m$a1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/m$a1;->c:Lcom/unity3d/player/m$a1;

    .line 113
    invoke-static {}, Lcom/unity3d/player/m$a1;->$values()[Lcom/unity3d/player/m$a1;

    move-result-object v0

    sput-object v0, Lcom/unity3d/player/m$a1;->$VALUES:[Lcom/unity3d/player/m$a1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p3, p0, Lcom/unity3d/player/m$a1;->i:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/player/m$a1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 113
    const-class v0, Lcom/unity3d/player/m$a1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/player/m$a1;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/player/m$a1;
    .locals 1

    .line 113
    sget-object v0, Lcom/unity3d/player/m$a1;->$VALUES:[Lcom/unity3d/player/m$a1;

    invoke-virtual {v0}, [Lcom/unity3d/player/m$a1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/player/m$a1;

    return-object v0
.end method

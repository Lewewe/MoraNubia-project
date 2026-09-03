.class public final enum Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;
.super Ljava/lang/Enum;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

.field public static final enum COMPLETE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

.field public static final enum IDLE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

.field public static final enum PAUSE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

.field public static final enum PLAYING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

.field public static final enum PREPAREING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

.field public static final enum STOP:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;
    .locals 6

    .line 620
    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->IDLE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PREPAREING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v2, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PLAYING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v3, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PAUSE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v4, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->STOP:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v5, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->COMPLETE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    filled-new-array/range {v0 .. v5}, [Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 624
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->IDLE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    .line 628
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    const-string v1, "PREPAREING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PREPAREING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    .line 632
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    const-string v1, "PLAYING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PLAYING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    .line 636
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    const-string v1, "PAUSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PAUSE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    .line 640
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    const-string v1, "STOP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->STOP:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    .line 644
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    const-string v1, "COMPLETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->COMPLETE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    .line 620
    invoke-static {}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->$values()[Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->$VALUES:[Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

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

    .line 620
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 620
    const-class v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;
    .locals 1

    .line 620
    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->$VALUES:[Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    return-object v0
.end method

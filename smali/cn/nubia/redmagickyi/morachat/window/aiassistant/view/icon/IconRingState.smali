.class public final enum Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;
.super Ljava/lang/Enum;
.source "IconRingState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

.field public static final enum Beating:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

.field public static final enum None:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

.field public static final enum Rolling:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;
    .locals 3

    .line 3
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->None:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Rolling:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Beating:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    filled-new-array {v0, v1, v2}, [Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->None:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    .line 7
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    const-string v1, "Rolling"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Rolling:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    .line 9
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    const-string v1, "Beating"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Beating:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    .line 3
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->$values()[Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->$VALUES:[Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    const-class v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;
    .locals 1

    .line 3
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->$VALUES:[Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    return-object v0
.end method

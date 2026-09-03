.class public final enum Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;
.super Ljava/lang/Enum;
.source "LoopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/loopview/LoopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

.field public static final enum CLICK:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

.field public static final enum DAGGLE:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

.field public static final enum FLING:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;
    .locals 3

    .line 38
    sget-object v0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->CLICK:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    sget-object v1, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->FLING:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    sget-object v2, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->DAGGLE:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    filled-new-array {v0, v1, v2}, [Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->CLICK:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    .line 42
    new-instance v0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    const-string v1, "FLING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->FLING:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    .line 44
    new-instance v0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    const-string v1, "DAGGLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->DAGGLE:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    .line 38
    invoke-static {}, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->$values()[Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->$VALUES:[Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    const-class v0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;
    .locals 1

    .line 38
    sget-object v0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->$VALUES:[Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    return-object v0
.end method

.class public final enum Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;
.super Ljava/lang/Enum;
.source "PolygonContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/PolygonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillCornerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

.field public static final enum LEFT_TOP:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

.field public static final enum NONE:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

.field public static final enum RIGHT_BOTTOM:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;
    .locals 3

    .line 62
    sget-object v0, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->NONE:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    sget-object v1, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->LEFT_TOP:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    sget-object v2, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->RIGHT_BOTTOM:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    filled-new-array {v0, v1, v2}, [Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->NONE:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    .line 66
    new-instance v0, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    const-string v1, "LEFT_TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->LEFT_TOP:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    .line 68
    new-instance v0, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    const-string v1, "RIGHT_BOTTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->RIGHT_BOTTOM:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    .line 62
    invoke-static {}, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->$values()[Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->$VALUES:[Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

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

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 62
    const-class v0, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;
    .locals 1

    .line 62
    sget-object v0, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->$VALUES:[Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    return-object v0
.end method

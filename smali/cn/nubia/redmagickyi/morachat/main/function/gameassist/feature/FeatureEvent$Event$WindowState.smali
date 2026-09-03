.class public final enum Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;
.super Ljava/lang/Enum;
.source "FeatureEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

.field public static final enum CLOSED:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

.field public static final enum EXPAND:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

.field public static final enum PACKUP:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

.field public static final enum SHOWN:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;


# instance fields
.field private code:I


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;
    .locals 4

    .line 13
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->SHOWN:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->CLOSED:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->EXPAND:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->PACKUP:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    filled-new-array {v0, v1, v2, v3}, [Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    const-string v1, "SHOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->SHOWN:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    .line 17
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    const-string v1, "CLOSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->CLOSED:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    .line 19
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    const-string v1, "EXPAND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->EXPAND:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    .line 21
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    const-string v1, "PACKUP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->PACKUP:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    .line 13
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->$values()[Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->$VALUES:[Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->code:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;)I
    .locals 0

    .line 13
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->code:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 13
    const-class v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;
    .locals 1

    .line 13
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->$VALUES:[Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    return-object v0
.end method

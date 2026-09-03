.class public final enum Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;
.super Ljava/lang/Enum;
.source "ImageScaleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

.field public static final enum IN_SAMPLE_POWER_OF_2:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

.field public static final enum NONE:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;
    .locals 2

    .line 5
    sget-object v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->NONE:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    sget-object v1, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    filled-new-array {v0, v1}, [Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->NONE:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    .line 9
    new-instance v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    const/4 v1, 0x1

    const v2, -0x7fffffff

    const-string v3, "IN_SAMPLE_POWER_OF_2"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    .line 5
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->$values()[Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->$VALUES:[Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 5
    const-class v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;
    .locals 1

    .line 5
    sget-object v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->$VALUES:[Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 18
    iget p0, p0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->value:I

    return p0
.end method

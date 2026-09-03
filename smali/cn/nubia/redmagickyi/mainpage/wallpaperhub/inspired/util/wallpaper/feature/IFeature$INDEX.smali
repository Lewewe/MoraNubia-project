.class public final enum Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;
.super Ljava/lang/Enum;
.source "IFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INDEX"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

.field public static final enum INSPIRED:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

.field public static final enum NONE:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

.field public static final enum PET:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;


# instance fields
.field id:I


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;
    .locals 3

    .line 26
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->NONE:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    sget-object v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->INSPIRED:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    sget-object v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->PET:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    filled-new-array {v0, v1, v2}, [Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->NONE:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    .line 30
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    const-string v1, "INSPIRED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->INSPIRED:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    .line 32
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    const-string v1, "PET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->PET:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    .line 26
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->$values()[Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->$VALUES:[Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;
    .locals 1

    .line 26
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->$VALUES:[Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->id:I

    return p0
.end method

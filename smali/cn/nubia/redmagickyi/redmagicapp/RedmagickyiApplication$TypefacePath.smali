.class public final enum Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;
.super Ljava/lang/Enum;
.source "RedmagickyiApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypefacePath"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

.field public static final enum TYPEFACE_MOCHIY:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

.field public static final enum TYPEFACE_NONE:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

.field public static final enum TYPEFACE_WIDGET:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

.field public static final enum TYPEFACE_YOUSHE:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;
    .locals 4

    .line 217
    sget-object v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_NONE:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_MOCHIY:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    sget-object v2, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_YOUSHE:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    sget-object v3, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_WIDGET:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    filled-new-array {v0, v1, v2, v3}, [Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 219
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "TYPEFACE_NONE"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_NONE:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    .line 221
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    const/4 v1, 0x1

    const-string v2, "fonts/MochiyPopPOne-Regular.ttf"

    const-string v3, "TYPEFACE_MOCHIY"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_MOCHIY:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    .line 223
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    const/4 v1, 0x2

    const-string v2, "fonts/YouSheBiaoTiHei-2.ttf"

    const-string v3, "TYPEFACE_YOUSHE"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_YOUSHE:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    .line 225
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    const/4 v1, 0x3

    const-string v2, "fonts/redmagicwidget.otf"

    const-string v3, "TYPEFACE_WIDGET"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_WIDGET:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    .line 217
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->$values()[Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->$VALUES:[Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 229
    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->path:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 217
    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;
    .locals 1

    .line 217
    sget-object v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->$VALUES:[Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 0

    .line 233
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->path:Ljava/lang/String;

    return-object p0
.end method

.class public final enum Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;
.super Ljava/lang/Enum;
.source "RedmagickyiProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "URI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

.field public static final enum ALARM_CLOCK:Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

.field public static final enum SKIN:Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;


# instance fields
.field private subUri:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;
    .locals 2

    .line 27
    sget-object v0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->SKIN:Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    sget-object v1, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->ALARM_CLOCK:Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    filled-new-array {v0, v1}, [Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    const/4 v1, 0x0

    const-string v2, "skin"

    const-string v3, "SKIN"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->SKIN:Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    .line 31
    new-instance v0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    const/4 v1, 0x1

    const-string v2, "alarm_clock"

    const-string v3, "ALARM_CLOCK"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->ALARM_CLOCK:Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    .line 27
    invoke-static {}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->$values()[Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->$VALUES:[Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

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

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->subUri:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    const-class v0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;
    .locals 1

    .line 27
    sget-object v0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->$VALUES:[Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    return-object v0
.end method


# virtual methods
.method public getSubUri()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->subUri:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 38
    const-string v0, "cn.nubia.redmagickyi.RedmagickyiProvider"

    iget-object p0, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->subUri:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "content://%s/%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

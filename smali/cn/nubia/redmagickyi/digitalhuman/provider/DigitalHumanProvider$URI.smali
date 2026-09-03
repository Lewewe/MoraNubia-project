.class public final enum Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;
.super Ljava/lang/Enum;
.source "DigitalHumanProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "URI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

.field public static final enum ALARM_CLOCK:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

.field public static final enum CURRENT_SKIN:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

.field public static final enum GET_SKIN_LIST:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

.field public static final enum LOAD_MORE:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;


# instance fields
.field private subUri:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;
    .locals 4

    .line 29
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->GET_SKIN_LIST:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->CURRENT_SKIN:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->LOAD_MORE:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    sget-object v3, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->ALARM_CLOCK:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    filled-new-array {v0, v1, v2, v3}, [Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    const/4 v1, 0x0

    const-string v2, "skin_list"

    const-string v3, "GET_SKIN_LIST"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->GET_SKIN_LIST:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    .line 33
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    const/4 v1, 0x1

    const-string v2, "current_skin"

    const-string v3, "CURRENT_SKIN"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->CURRENT_SKIN:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    .line 35
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    const/4 v1, 0x2

    const-string v2, "load_more"

    const-string v3, "LOAD_MORE"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->LOAD_MORE:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    .line 37
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    const/4 v1, 0x3

    const-string v2, "alarm_clock"

    const-string v3, "ALARM_CLOCK"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->ALARM_CLOCK:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->$values()[Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->$VALUES:[Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

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

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->subUri:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 29
    const-class v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;
    .locals 1

    .line 29
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->$VALUES:[Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    return-object v0
.end method


# virtual methods
.method public getSubUri()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->subUri:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 46
    const-string v0, "cn.nubia.redmagickyi.digitalhuman.settings.provider"

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->subUri:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "content://%s/%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

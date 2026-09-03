.class public final enum Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;
.super Ljava/lang/Enum;
.source "AchievementLocaleDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

.field public static final enum KICK_OUT_BY_MORA:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

.field public static final enum REDMAGIC_CALL_COMPLETED:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;


# instance fields
.field private final localeData:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;
    .locals 2

    .line 24
    sget-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->KICK_OUT_BY_MORA:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    sget-object v1, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->REDMAGIC_CALL_COMPLETED:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    filled-new-array {v0, v1}, [Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    new-instance v1, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$KickOutByMora;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$KickOutByMora;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$1;)V

    const-string v3, "KICK_OUT_BY_MORA"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;-><init>(Ljava/lang/String;ILcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;)V

    sput-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->KICK_OUT_BY_MORA:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    .line 28
    new-instance v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    new-instance v1, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$RedmagicCallCompleted;

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$RedmagicCallCompleted;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$1;)V

    const-string v2, "REDMAGIC_CALL_COMPLETED"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;-><init>(Ljava/lang/String;ILcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;)V

    sput-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->REDMAGIC_CALL_COMPLETED:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    .line 24
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->$values()[Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->$VALUES:[Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;)V
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
            "Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->localeData:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;)Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->localeData:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 24
    const-class v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;
    .locals 1

    .line 24
    sget-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->$VALUES:[Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    return-object v0
.end method

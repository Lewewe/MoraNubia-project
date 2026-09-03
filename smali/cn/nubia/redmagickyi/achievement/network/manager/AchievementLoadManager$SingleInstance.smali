.class Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$SingleInstance;
.super Ljava/lang/Object;
.source "AchievementLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$1;)V

    sput-object v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

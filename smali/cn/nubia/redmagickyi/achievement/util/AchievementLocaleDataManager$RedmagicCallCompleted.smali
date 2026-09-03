.class Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$RedmagicCallCompleted;
.super Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;
.source "AchievementLocaleDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RedmagicCallCompleted"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$1;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$RedmagicCallCompleted;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 183
    const-string p0, "pref_achievement_redmagic_call_complete_state"

    return-object p0
.end method

.method public getTaskId()I
    .locals 0

    const/16 p0, 0x138a

    return p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$RedmagicCallCompleted;->getSavedValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    .line 191
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$RedmagicCallCompleted;->getValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public isValueAvailable(Ljava/lang/Integer;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isValueAvailable(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 174
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$RedmagicCallCompleted;->isValueAvailable(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 197
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$RedmagicCallCompleted;->setSavedValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/String;)V
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

    .line 174
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$RedmagicCallCompleted;->setValue(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

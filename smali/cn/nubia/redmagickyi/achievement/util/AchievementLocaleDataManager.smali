.class public Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;
.super Ljava/lang/Object;
.source "AchievementLocaleDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;,
        Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;,
        Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$RedmagicCallCompleted;,
        Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$KickOutByMora;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearData(ILjava/lang/String;)V
    .locals 6

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->values()[Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 79
    invoke-static {v4}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;)Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;->getTaskId()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->saveData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static clearData(Ljava/lang/String;)V
    .locals 2

    .line 73
    sget-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->KICK_OUT_BY_MORA:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->saveData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->REDMAGIC_CALL_COMPLETED:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-static {v0, v1, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->saveData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static getData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;)Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getTotaleData(Ljava/lang/String;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;
    .locals 5

    .line 53
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;-><init>()V

    .line 54
    sget-object v1, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->KICK_OUT_BY_MORA:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->getData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 55
    sget-object v2, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->KICK_OUT_BY_MORA:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->isValueAvailable(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 56
    sget-object v2, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->KICK_OUT_BY_MORA:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;)Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;->getTaskId()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;->addItem(ILjava/lang/String;)V

    .line 58
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->REDMAGIC_CALL_COMPLETED:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->getData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 59
    sget-object v1, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->REDMAGIC_CALL_COMPLETED:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->isValueAvailable(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    sget-object v1, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->REDMAGIC_CALL_COMPLETED:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;)Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;->getTaskId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;->addItem(ILjava/lang/String;)V

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;->size()I

    move-result p0

    if-lez p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isValueAvailable(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;",
            "TT;)Z"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;)Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;->isValueAvailable(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static saveData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;)Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$BaseLocaleData;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.class public Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;
.super Ljava/lang/Object;
.source "AchievementLocaleBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addItem(ILjava/lang/String;)V
    .locals 1

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;->list:Ljava/util/List;

    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;

    invoke-direct {v0, p1, p2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getItem(I)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;

    return-object p0
.end method

.method public getItem()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;->list:Ljava/util/List;

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

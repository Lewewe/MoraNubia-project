.class public Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;
.super Ljava/lang/Object;
.source "StoryProfileManager.java"


# static fields
.field private static storyBeansList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/StoryBeans;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStoryByLevel(I)Lcn/nubia/redmagickyi/model/StoryBeans;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;->getStoryProfileList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;->getStoryProfileList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/model/StoryBeans;

    .line 51
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/model/StoryBeans;->getMinLevel()I

    move-result v3

    if-gt v3, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getStoryPositionByLevel(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 35
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;->getStoryProfileList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;->getStoryProfileList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/model/StoryBeans;

    .line 37
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/model/StoryBeans;->getMinLevel()I

    move-result v2

    if-gt v2, p0, :cond_0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static getStoryProfileList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/StoryBeans;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;->storyBeansList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;->storyBeansList:Ljava/util/List;

    .line 20
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$array;->model_story_describe:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$array;->model_story_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 22
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 23
    new-instance v3, Lcn/nubia/redmagickyi/model/StoryBeans;

    invoke-direct {v3}, Lcn/nubia/redmagickyi/model/StoryBeans;-><init>()V

    .line 24
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/model/StoryBeans;->setDescribe(Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x2

    .line 25
    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/model/StoryBeans;->setMinLevel(I)V

    .line 26
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/model/StoryBeans;->setTitle(Ljava/lang/String;)V

    .line 27
    sget-object v4, Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;->storyBeansList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;->storyBeansList:Ljava/util/List;

    return-object v0
.end method

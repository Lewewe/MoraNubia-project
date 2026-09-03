.class public Lcn/nubia/redmagickyi/model/StoryBeans;
.super Ljava/lang/Object;
.source "StoryBeans.java"


# instance fields
.field private describe:Ljava/lang/String;

.field private isPlaceHolder:Z

.field private isSelecte:Z

.field private minLevel:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/model/StoryBeans;->isSelecte:Z

    return-void
.end method


# virtual methods
.method public getDescribe()Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/redmagickyi/model/StoryBeans;->describe:Ljava/lang/String;

    return-object p0
.end method

.method public getMinLevel()I
    .locals 0

    .line 21
    iget p0, p0, Lcn/nubia/redmagickyi/model/StoryBeans;->minLevel:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/model/StoryBeans;->title:Ljava/lang/String;

    return-object p0
.end method

.method public isPlaceHolder()Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/model/StoryBeans;->isPlaceHolder:Z

    return p0
.end method

.method public isSelecte()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/model/StoryBeans;->isSelecte:Z

    return p0
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcn/nubia/redmagickyi/model/StoryBeans;->describe:Ljava/lang/String;

    return-void
.end method

.method public setMinLevel(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/model/StoryBeans;->minLevel:I

    return-void
.end method

.method public setPlaceHolder(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/model/StoryBeans;->isPlaceHolder:Z

    return-void
.end method

.method public setSelecte(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/model/StoryBeans;->isSelecte:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/model/StoryBeans;->title:Ljava/lang/String;

    return-void
.end method

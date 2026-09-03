.class public Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;
.super Ljava/lang/Object;
.source "AchievementLocaleBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field taskId:I

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;->taskId:I

    .line 15
    iput-object p2, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTaskId()I
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;->taskId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;->value:Ljava/lang/String;

    return-object p0
.end method

.method public setTaskId(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;->taskId:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;->value:Ljava/lang/String;

    return-void
.end method

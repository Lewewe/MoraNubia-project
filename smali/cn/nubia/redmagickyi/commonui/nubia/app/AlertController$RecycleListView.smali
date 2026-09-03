.class public Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1013
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 1010
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1017
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 1010
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1021
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 1010
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1026
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 1010
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 0

    .line 1030
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return p0
.end method

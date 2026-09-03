.class public abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseWallPaperHubGroupViewHolder.java"


# instance fields
.field public cbSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field public child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

.field public count:Landroid/widget/TextView;

.field private isFromMore:Z

.field public itemSize:[I

.field private layoutTitle:Landroid/view/View;

.field public manager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public maxItemCount:I

.field public seeMore:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->isFromMore:Z

    .line 27
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->layoutTitle:Landroid/view/View;

    .line 28
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->group_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->title:Landroid/widget/TextView;

    .line 29
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->count:Landroid/widget/TextView;

    .line 30
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->seeMore:Landroid/widget/TextView;

    .line 31
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->cbSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 32
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->child_recyclerview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->createMaxSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->manager:Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 35
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->manager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->getMaxItemCount()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->maxItemCount:I

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->layoutTitle:Landroid/view/View;

    if-eqz p2, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected abstract createMaxSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I
.end method

.method protected getDimension(I)I
    .locals 0

    .line 62
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getItemSize()[I
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->itemSize:[I

    return-object p0
.end method

.method public final getMaxItemCount()I
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->isFromMore:Z

    if-eqz v0, :cond_0

    const p0, 0x7fffffff

    return p0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->getMaxItemCountInner()I

    move-result p0

    return p0
.end method

.method protected abstract getMaxItemCountInner()I
.end method

.method public setItemSize(II)V
    .locals 0

    .line 58
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->itemSize:[I

    return-void
.end method

.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/viewholder/WallPaperHubStaticsGroupViewHolder;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;
.source "WallPaperHubStaticsGroupViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public createMaxSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 5

    .line 23
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    .line 25
    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingEnd()I

    move-result p1

    sub-int/2addr v0, p1

    .line 26
    sget p1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_117p33_dp:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/viewholder/WallPaperHubStaticsGroupViewHolder;->getDimension(I)I

    move-result p1

    .line 27
    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v4, v0

    int-to-float p1, p1

    div-float/2addr v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 28
    invoke-virtual {v1, v3, p1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    .line 30
    div-int/2addr v0, p1

    .line 31
    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/viewholder/WallPaperHubStaticsGroupViewHolder;->getDimension(I)I

    move-result v1

    sub-int v1, v0, v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_252_dp:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/viewholder/WallPaperHubStaticsGroupViewHolder;->getDimension(I)I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_117p33_dp:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/viewholder/WallPaperHubStaticsGroupViewHolder;->getDimension(I)I

    move-result v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/viewholder/WallPaperHubStaticsGroupViewHolder;->getDimension(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/viewholder/WallPaperHubStaticsGroupViewHolder;->setItemSize(II)V

    return p1
.end method

.method public getMaxItemCountInner()I
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/viewholder/WallPaperHubStaticsGroupViewHolder;->manager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

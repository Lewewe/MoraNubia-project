.class public Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "MoraStoreEmptyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PAG_FILE:Ljava/lang/String; = "assets://video/morastore/empty_morastore.pag"


# instance fields
.field private back:Landroid/widget/ImageView;

.field private pagView:Lorg/libpag/PAGView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 6

    .line 33
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->model_name:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->title:Landroid/widget/TextView;

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->back:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->head_layout:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_container:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 40
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 42
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 46
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_60_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 48
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 51
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_20_dp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 56
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 57
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :goto_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->view_pag:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/libpag/PAGView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->pagView:Lorg/libpag/PAGView;

    .line 61
    const-string v1, "assets://video/morastore/empty_morastore.pag"

    invoke-virtual {v0, v1}, Lorg/libpag/PAGView;->setPath(Ljava/lang/String;)Z

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->pagView:Lorg/libpag/PAGView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/libpag/PAGView;->setRepeatCount(I)V

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->pagView:Lorg/libpag/PAGView;

    invoke-virtual {p0}, Lorg/libpag/PAGView;->play()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->activity_mora_store_empty:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->pagView:Lorg/libpag/PAGView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/libpag/PAGView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;->pagView:Lorg/libpag/PAGView;

    invoke-virtual {p0}, Lorg/libpag/PAGView;->stop()V

    :cond_0
    return-void
.end method

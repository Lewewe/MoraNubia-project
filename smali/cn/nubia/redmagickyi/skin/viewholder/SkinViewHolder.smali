.class public Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SkinViewHolder.java"


# instance fields
.field public imgBg:Landroid/widget/ImageView;

.field public item2D:Landroid/widget/TextView;

.field public ivThumbnail:Lcn/nubia/redmagickyi/skin/view/MaskImage;

.field public lock:Landroid/widget/ImageView;

.field public usedLayout:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/skin/view/MaskImage;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->ivThumbnail:Lcn/nubia/redmagickyi/skin/view/MaskImage;

    .line 25
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->item_select_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->usedLayout:Landroid/widget/TextView;

    .line 26
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->item_img_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->imgBg:Landroid/widget/ImageView;

    .line 27
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->item_img_lock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->lock:Landroid/widget/ImageView;

    .line 28
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->item_2d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->item2D:Landroid/widget/TextView;

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public startLightAnim()V
    .locals 3

    .line 33
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->change_skin_list_item_light_to_x_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->change_skin_list_item_light_to_y_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x1c2

    .line 34
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 35
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public stopLightAnim()V
    .locals 1

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->ivThumbnail:Lcn/nubia/redmagickyi/skin/view/MaskImage;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->setVisibility(I)V

    return-void
.end method

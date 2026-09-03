.class public Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TechnologyCenterViewHolder.java"


# instance fields
.field public cbFunctionEnable:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

.field public imgPreview:Landroid/widget/ImageView;

.field public imgPreviewIcon:Landroid/widget/ImageView;

.field public imgPreviewNewStyle:Landroid/widget/ImageView;

.field public layoutFunctionEnable:Landroid/view/View;

.field public tvDescribe:Landroid/widget/TextView;

.field public tvTitle:Landroid/widget/TextView;

.field public tvTitleSub:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 27
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->title_sub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitleSub:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 32
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->describe:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvDescribe:Landroid/widget/TextView;

    .line 33
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_function_enable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->cbFunctionEnable:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    .line 34
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_function_enable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->layoutFunctionEnable:Landroid/view/View;

    .line 35
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreview:Landroid/widget/ImageView;

    .line 36
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_preview_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewIcon:Landroid/widget/ImageView;

    .line 37
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_preview_new:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewNewStyle:Landroid/widget/ImageView;

    return-void
.end method

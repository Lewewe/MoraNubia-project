.class public Lcn/nubia/redmagickyi/ar/viewholder/ARSpaceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ARSpaceViewHolder.java"


# instance fields
.field public imgPreviewIcon:Landroid/widget/ImageView;

.field public tvDescribe:Landroid/widget/TextView;

.field public tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/viewholder/ARSpaceViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 20
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->describe:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/viewholder/ARSpaceViewHolder;->tvDescribe:Landroid/widget/TextView;

    .line 22
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_preview_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/viewholder/ARSpaceViewHolder;->imgPreviewIcon:Landroid/widget/ImageView;

    return-void
.end method

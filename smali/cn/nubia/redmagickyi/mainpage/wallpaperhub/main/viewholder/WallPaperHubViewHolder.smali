.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WallPaperHubViewHolder.java"


# instance fields
.field public bg:Landroid/widget/ImageView;

.field public dynamicImage:Landroid/widget/ImageView;

.field public item:Landroid/widget/FrameLayout;

.field public newAdd:Landroid/widget/ImageView;

.field public using:Landroid/view/View;

.field public voice:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;[I)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->dynamic_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->dynamicImage:Landroid/widget/ImageView;

    .line 24
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->voice_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->voice:Landroid/widget/ImageView;

    .line 25
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->newadd_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->newAdd:Landroid/widget/ImageView;

    .line 26
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->using_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->using:Landroid/view/View;

    .line 27
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->item:Landroid/widget/FrameLayout;

    .line 28
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    .line 30
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->item:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    .line 31
    aget p2, p2, v0

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->item:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

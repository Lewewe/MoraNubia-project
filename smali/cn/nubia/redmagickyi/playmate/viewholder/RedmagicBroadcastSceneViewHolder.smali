.class public Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RedmagicBroadcastSceneViewHolder.java"


# instance fields
.field public cbScene:Landroid/widget/CheckBox;

.field public ivSound:Landroid/widget/ImageView;

.field public progressPlay:Landroid/widget/ProgressBar;

.field public tvScene:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_scene:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->tvScene:Landroid/widget/TextView;

    .line 22
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_scene:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->cbScene:Landroid/widget/CheckBox;

    .line 23
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_sound_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    .line 24
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->progress_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    return-void
.end method

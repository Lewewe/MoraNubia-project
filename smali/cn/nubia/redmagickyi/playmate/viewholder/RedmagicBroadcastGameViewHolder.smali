.class public Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RedmagicBroadcastGameViewHolder.java"


# instance fields
.field public cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

.field public tvGame:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_game:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;->cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    .line 20
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_game:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;->tvGame:Landroid/widget/TextView;

    .line 21
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

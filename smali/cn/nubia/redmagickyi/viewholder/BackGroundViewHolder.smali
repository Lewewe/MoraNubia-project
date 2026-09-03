.class public Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BackGroundViewHolder.java"


# instance fields
.field public textView:Landroid/widget/TextView;

.field public thumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;->textView:Landroid/widget/TextView;

    .line 18
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;->thumbnail:Landroid/widget/ImageView;

    return-void
.end method

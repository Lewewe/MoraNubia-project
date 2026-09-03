.class public Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ProfileViewHolder.java"


# instance fields
.field public describe:Landroid/widget/TextView;

.field public index:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;->index:Landroid/widget/TextView;

    .line 19
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;->title:Landroid/widget/TextView;

    .line 20
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_describe:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;->describe:Landroid/widget/TextView;

    return-void
.end method

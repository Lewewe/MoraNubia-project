.class public Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AlarmWeekViewHolder.java"


# instance fields
.field public bg:Landroid/widget/RelativeLayout;

.field public week:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->week_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;->bg:Landroid/widget/RelativeLayout;

    .line 18
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->week:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;->week:Landroid/widget/TextView;

    return-void
.end method

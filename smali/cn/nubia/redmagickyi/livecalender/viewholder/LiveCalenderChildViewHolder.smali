.class public Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LiveCalenderChildViewHolder.java"


# instance fields
.field public layoutContent:Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;

.field public layoutContentMarginTop:Landroid/view/View;

.field public tvAddress:Landroid/widget/TextView;

.field public tvContent:Landroid/widget/TextView;

.field public tvTime:Landroid/widget/TextView;

.field public tvTitle:Landroid/widget/TextView;

.field public viewLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvTime:Landroid/widget/TextView;

    .line 20
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 21
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_content_margintop:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->layoutContentMarginTop:Landroid/view/View;

    .line 22
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->layoutContent:Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;

    .line 23
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvContent:Landroid/widget/TextView;

    .line 24
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_address:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvAddress:Landroid/widget/TextView;

    .line 25
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->view_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->viewLine:Landroid/view/View;

    return-void
.end method

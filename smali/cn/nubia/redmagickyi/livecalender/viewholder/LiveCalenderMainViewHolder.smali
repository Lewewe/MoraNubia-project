.class public Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LiveCalenderMainViewHolder.java"


# instance fields
.field public ivBackground:Landroid/widget/ImageView;

.field public ivLeftBg:Landroid/widget/ImageView;

.field public ivLeftFg:Landroid/widget/ImageView;

.field public layoutLeft:Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;

.field public layoutRight:Lcn/nubia/redmagickyi/livecalender/view/RightLayout;

.field public layoutRightRoot:Landroid/view/View;

.field public rvChild:Landroidx/recyclerview/widget/RecyclerView;

.field public tvDay:Landroid/widget/TextView;

.field public tvWeek:Landroid/widget/TextView;

.field public viewLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->layoutLeft:Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;

    .line 28
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->layoutRight:Lcn/nubia/redmagickyi/livecalender/view/RightLayout;

    .line 29
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_right_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->layoutRightRoot:Landroid/view/View;

    .line 30
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivBackground:Landroid/widget/ImageView;

    .line 31
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_left_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivLeftBg:Landroid/widget/ImageView;

    .line 32
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_left_fg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivLeftFg:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_day:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->tvDay:Landroid/widget/TextView;

    .line 34
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_week:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->tvWeek:Landroid/widget/TextView;

    .line 35
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->rv_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->rvChild:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->view_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->viewLine:Landroid/view/View;

    .line 38
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->initRecyclerView()V

    return-void
.end method

.method private initRecyclerView()V
    .locals 4

    .line 42
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->rvChild:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

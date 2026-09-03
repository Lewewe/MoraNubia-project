.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;
.super Ljava/lang/Object;
.source "OutputListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OutputListView"


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;

.field private context:Landroid/content/Context;

.field private entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

.field private ivTitle:Landroid/widget/ImageView;

.field private layoutTitle:Landroid/view/View;

.field private onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;

.field private rvList:Landroidx/recyclerview/widget/RecyclerView;

.field private size:[I

.field private tempItemView:Landroid/view/View;

.field private tvCanceled:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private viewRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)I
    .locals 0

    .line 19
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getMaxRecyclerViewHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;

    return-object p0
.end method

.method private getMaxRecyclerViewHeight()I
    .locals 1

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_menu_list_item_height_max:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method


# virtual methods
.method public bindView(Landroid/content/Context;Landroid/view/View;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;
    .locals 6

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->context:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;

    .line 35
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->viewRoot:Landroid/view/View;

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    .line 36
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->viewRoot:Landroid/view/View;

    .line 37
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    aget v3, v0, v1

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v3

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_menu_list_width:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 40
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->layoutTitle:Landroid/view/View;

    .line 42
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->ivTitle:Landroid/widget/ImageView;

    .line 43
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->tvTitle:Landroid/widget/TextView;

    .line 44
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_canceled:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->tvCanceled:Landroid/widget/TextView;

    .line 45
    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$1;

    invoke-direct {v2, p0, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget p3, Lcn/nubia/redmagickyi/main/R$id;->rv_list:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    new-instance p3, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$2;

    invoke-direct {p3, p0, p1, v4, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$1;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->adapter:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->tempItemView:Landroid/view/View;

    if-nez p2, :cond_1

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->morachat_gameagent_window_menu_list_item:I

    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->tempItemView:Landroid/view/View;

    :cond_1
    return-object p0
.end method

.method public getSize()[I
    .locals 6

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->size:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 92
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 93
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    if-eqz v3, :cond_1

    array-length v3, v3

    if-lez v3, :cond_1

    .line 94
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->viewRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 95
    aget v4, v0, v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v4, v3

    aput v4, v0, v1

    .line 96
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->layoutTitle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 97
    aget v3, v0, v2

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 98
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->tvCanceled:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 99
    aget v3, v0, v2

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 100
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->tempItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 101
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v1

    .line 102
    aget v1, v0, v2

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getMaxRecyclerViewHeight()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    array-length v5, v5

    mul-int/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v1, v3

    aput v1, v0, v2

    .line 104
    :cond_1
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->size:[I

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->viewRoot:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->viewRoot:Landroid/view/View;

    return-object p0
.end method

.method public varargs setData([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V
    .locals 3

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->size:[I

    .line 114
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====================setData, length : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OutputListView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->adapter:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->viewRoot:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->viewRoot:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->adapter:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

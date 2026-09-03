.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;
.super Ljava/lang/Object;
.source "OutputButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$OnItemClickedListener;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OutputButtonView"


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;

.field private context:Landroid/content/Context;

.field private entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$OnItemClickedListener;

.field private size:[I

.field private tempItemView:Landroid/view/View;

.field private viewRoot:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)I
    .locals 0

    .line 34
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getItemEdgeOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$OnItemClickedListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$OnItemClickedListener;

    return-object p0
.end method

.method private getItemEdgeOffset()I
    .locals 1

    .line 67
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bindView(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;
    .locals 2

    .line 46
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->context:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$OnItemClickedListener;

    .line 48
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    if-eq p3, p2, :cond_0

    .line 49
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    new-instance p3, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$1;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->adapter:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    new-instance p3, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$1;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 60
    :cond_0
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->tempItemView:Landroid/view/View;

    if-nez p3, :cond_1

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->morachat_gameagent_window_menu_button_item:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->tempItemView:Landroid/view/View;

    :cond_1
    return-object p0
.end method

.method public getData()[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;
    .locals 0

    .line 147
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    return-object p0
.end method

.method public getMaxWidth()I
    .locals 4

    .line 130
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 133
    aget v3, v0, v3

    aget v0, v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_menu_button_width_max:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 135
    :cond_0
    aget v1, v0, v3

    aget v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_menu_button_width_max:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getSize()[I
    .locals 11

    .line 97
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->size:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 100
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 101
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    if-eqz v4, :cond_5

    array-length v4, v4

    if-lez v4, :cond_5

    .line 102
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->tempItemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 103
    aget v5, v1, v3

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v4

    add-int/2addr v5, v6

    aput v5, v1, v3

    .line 104
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->tempItemView:Landroid/view/View;

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->iv_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 105
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->tempItemView:Landroid/view/View;

    sget v5, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move v5, v2

    .line 106
    :goto_0
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 107
    aget v6, v1, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getMaxWidth()I

    move-result v7

    if-lt v6, v7, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    aget-object v6, v6, v5

    .line 111
    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 112
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    aget v8, v1, v2

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v9, v7

    add-int/2addr v8, v9

    aput v8, v1, v2

    .line 115
    :cond_2
    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 116
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 117
    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 118
    aget v7, v1, v2

    int-to-float v7, v7

    add-float/2addr v7, v6

    float-to-int v6, v7

    aput v6, v1, v2

    .line 120
    :cond_3
    aget v6, v1, v2

    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->tempItemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->tempItemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    aput v6, v1, v2

    .line 121
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getItemEdgeOffset()I

    move-result v7

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    aput v6, v1, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getMaxWidth()I

    move-result v0

    aget v3, v1, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v1, v2

    .line 125
    :cond_5
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->size:[I

    return-object v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public hideItemsWhichHasContent()V
    .locals 6

    .line 157
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 160
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->setData([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V

    :cond_2
    return-void
.end method

.method public varargs setData([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V
    .locals 3

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->size:[I

    .line 141
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    .line 142
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

    const-string v0, "OutputButtonView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->adapter:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->adapter:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

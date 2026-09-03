.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;
.super Ljava/lang/Object;
.source "PresetButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuButtonView"


# instance fields
.field private accompanyEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

.field private adapter:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;

.field private context:Landroid/content/Context;

.field private entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;

.field private size:[I

.field private tempItemView:Landroid/view/View;

.field private viewRoot:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)I
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getItemEdgeOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;

    return-object p0
.end method

.method private getItemEdgeOffset()I
    .locals 1

    .line 66
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
.method public bindView(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;
    .locals 2

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->context:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;

    .line 45
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    if-eq p3, p2, :cond_0

    .line 46
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    new-instance p3, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$1;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->adapter:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    new-instance p3, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$1;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 56
    new-array p3, v0, [Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->setData([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V

    .line 58
    :cond_0
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->tempItemView:Landroid/view/View;

    if-nez p3, :cond_1

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->morachat_gameagent_window_menu_button_item:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->tempItemView:Landroid/view/View;

    :cond_1
    return-object p0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 129
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_menu_button_width_max:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getSize()[I
    .locals 11

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->size:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 99
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 100
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    if-eqz v4, :cond_5

    array-length v4, v4

    if-lez v4, :cond_5

    .line 101
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->tempItemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 102
    aget v5, v1, v3

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v4

    add-int/2addr v5, v6

    aput v5, v1, v3

    .line 103
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->tempItemView:Landroid/view/View;

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->iv_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 104
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->tempItemView:Landroid/view/View;

    sget v5, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move v5, v2

    .line 105
    :goto_0
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 106
    aget v6, v1, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getMaxWidth()I

    move-result v7

    if-lt v6, v7, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    aget-object v6, v6, v5

    .line 110
    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 111
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 112
    aget v8, v1, v2

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v9, v7

    add-int/2addr v8, v9

    aput v8, v1, v2

    .line 114
    :cond_2
    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 115
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 116
    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 117
    aget v7, v1, v2

    int-to-float v7, v7

    add-float/2addr v7, v6

    float-to-int v6, v7

    aput v6, v1, v2

    .line 119
    :cond_3
    aget v6, v1, v2

    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->tempItemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->tempItemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    aput v6, v1, v2

    .line 120
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getItemEdgeOffset()I

    move-result v7

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    aput v6, v1, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 122
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getMaxWidth()I

    move-result v0

    aget v3, v1, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v1, v2

    .line 124
    :cond_5
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->size:[I

    return-object v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public varargs setData([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->accompanyEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$400(Landroid/content/Context;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->accompanyEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 138
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    if-eqz v2, :cond_1

    array-length v2, v2

    if-ne v2, v1, :cond_5

    .line 140
    :cond_1
    array-length v2, p1

    add-int/2addr v2, v1

    new-array v1, v2, [Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    .line 141
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    if-nez v0, :cond_2

    .line 143
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->accompanyEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    aput-object v2, v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v0, -0x1

    .line 145
    aget-object v2, p1, v2

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_3
    new-array p1, v1, [Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->accompanyEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    aput-object v1, p1, v0

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    :cond_4
    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->size:[I

    .line 155
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->adapter:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_5
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .line 160
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->adapter:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

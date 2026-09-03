.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;
.super Ljava/lang/Object;
.source "MenuAiFunctionsView.java"

# interfaces
.implements Lcom/zte/aifunctions/metadata/IDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;

.field private context:Landroid/content/Context;

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;

.field private size:[I

.field private tempItemView:Landroid/view/View;

.field private viewRoot:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MenuAiFunctionsView-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->adapter:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)I
    .locals 0

    .line 32
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getItemEdgeOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->entries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;

    return-object p0
.end method

.method private getItemEdgeOffset()I
    .locals 1

    .line 83
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_3_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bindView(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;
    .locals 3

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->context:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;

    .line 46
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    .line 47
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 49
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->adapter:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 50
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 62
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->registerDataSetChangedListener(Lcom/zte/aifunctions/metadata/IDataListener;)V

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->onDataSetChanged()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->tempItemView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->morachat_aiassistant_window_menu_button_item:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->tempItemView:Landroid/view/View;

    .line 69
    :cond_1
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$2;

    invoke-direct {p1, p0, p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 179
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->entries:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMaxWidth()I
    .locals 4

    .line 157
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 160
    aget v3, v0, v3

    aget v0, v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_menu_button_width_max:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 162
    :cond_0
    aget v1, v0, v3

    aget v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_menu_button_width_max:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getSize()[I
    .locals 12

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->size:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 118
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 119
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->entries:Ljava/util/List;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 120
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->tempItemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 121
    aget v5, v1, v3

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v4

    add-int/2addr v5, v6

    aput v5, v1, v3

    .line 122
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->tempItemView:Landroid/view/View;

    sget v5, Lcn/nubia/redmagickyi/main/R$id;->iv_title:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 123
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->tempItemView:Landroid/view/View;

    sget v6, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move v6, v2

    .line 124
    :goto_0
    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->entries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 125
    aget v7, v1, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getMaxWidth()I

    move-result v8

    if-lt v7, v8, :cond_1

    goto/16 :goto_2

    .line 128
    :cond_1
    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->entries:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    .line 129
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getThumbnails()[I

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getThumbnails()[I

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_4

    .line 131
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getType()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    move-result-object v8

    sget-object v9, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;->TYPE_TOGGLE:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    if-ne v8, v9, :cond_2

    .line 132
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getThumbnails()[I

    move-result-object v8

    aget v8, v8, v2

    if-gtz v8, :cond_3

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getThumbnails()[I

    move-result-object v8

    aget v8, v8, v3

    if-lez v8, :cond_4

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getType()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    move-result-object v8

    sget-object v9, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;->TYPE_CLICK:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    if-ne v8, v9, :cond_4

    .line 134
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getThumbnails()[I

    move-result-object v8

    aget v8, v8, v2

    if-lez v8, :cond_4

    .line 137
    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 138
    aget v9, v1, v2

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v10, v8

    add-int/2addr v9, v10

    aput v9, v1, v2

    .line 141
    :cond_4
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 142
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 143
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 144
    aget v8, v1, v2

    int-to-float v8, v8

    add-float/2addr v8, v7

    float-to-int v7, v8

    aput v7, v1, v2

    .line 146
    :cond_5
    aget v7, v1, v2

    iget-object v8, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->tempItemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->tempItemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    aput v7, v1, v2

    .line 147
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getItemEdgeOffset()I

    move-result v8

    mul-int/2addr v8, v0

    add-int/2addr v7, v8

    aput v7, v1, v2

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 150
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getMaxWidth()I

    move-result v3

    aget v4, v1, v2

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getItemEdgeOffset()I

    move-result v5

    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v1, v2

    .line 152
    :cond_7
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->size:[I

    return-object v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public onDataSetChanged()V
    .locals 1

    .line 184
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->values()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->size:[I

    .line 168
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->entries:Ljava/util/List;

    .line 169
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->adapter:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 89
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->adapter:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->viewRoot:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .line 173
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->adapter:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

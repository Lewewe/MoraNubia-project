.class public Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;
.super Ljava/lang/Object;
.source "WheelRecycle.java"


# instance fields
.field private emptyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private wheel:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->wheel:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    return-void
.end method

.method private addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 93
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 96
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private getCachedView(Ljava/util/List;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    .line 127
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 128
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private recycleView(Landroid/view/View;I)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->wheel:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getViewAdapter()Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ltz p2, :cond_0

    if-lt p2, v0, :cond_1

    .line 108
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->wheel:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isCyclic()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    iget-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->emptyItems:Ljava/util/List;

    goto :goto_1

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    add-int/2addr p2, v0

    goto :goto_0

    .line 115
    :cond_2
    rem-int/2addr p2, v0

    .line 116
    iget-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->items:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->items:Ljava/util/List;

    :goto_1
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->emptyItems:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 81
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public getEmptyItem()Landroid/view/View;
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->getCachedView(Ljava/util/List;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getItem()Landroid/view/View;
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->items:Ljava/util/List;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->getCachedView(Ljava/util/List;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public recycleItems(Landroid/widget/LinearLayout;ILcn/nubia/redmagickyi/guide/wheelview/ItemsRange;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v0, p2

    .line 42
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 43
    invoke-virtual {p3, v0}, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->recycleView(Landroid/view/View;I)V

    .line 45
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    if-nez v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.class Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutHelper"
.end annotation


# instance fields
.field private mLayoutOrder:[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

.field private mMaxVisibleItems:I

.field private final mReusedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScrollOffset:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mReusedItems:Ljava/util/List;

    .line 764
    iput p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mMaxVisibleItems:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I
    .locals 0

    .line 753
    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mMaxVisibleItems:I

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I
    .locals 0

    .line 753
    iput p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mMaxVisibleItems:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I
    .locals 0

    .line 753
    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I
    .locals 0

    .line 753
    iput p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    return p1
.end method

.method static synthetic access$112(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I
    .locals 1

    .line 753
    iget v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    return v0
.end method

.method static synthetic access$120(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I
    .locals 1

    .line 753
    iget v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;
    .locals 0

    .line 753
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    return-object p0
.end method

.method private createLayoutOrder()Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;
    .locals 1

    .line 833
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mReusedItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 834
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 836
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    .line 837
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    if-eqz v0, :cond_0

    return-object v0

    .line 842
    :cond_1
    new-instance p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;-><init>(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$1;)V

    return-object p0
.end method

.method private fillLayoutOrder()V
    .locals 4

    .line 825
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 826
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    .line 827
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->createLayoutOrder()Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs recycleItems([Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;)V
    .locals 5

    .line 818
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 820
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mReusedItems:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method hasAdapterPosition(I)Z
    .locals 4

    .line 806
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 807
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 808
    invoke-static {v3}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;->access$600(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;)I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method initLayoutOrder(I)V
    .locals 2

    .line 773
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eq v1, p1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    .line 775
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->recycleItems([Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;)V

    .line 777
    :cond_1
    new-array p1, p1, [Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    .line 778
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->fillLayoutOrder()V

    :cond_2
    return-void
.end method

.method setLayoutOrder(IIF)V
    .locals 0

    .line 794
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    aget-object p0, p0, p1

    .line 795
    invoke-static {p0, p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;->access$602(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;I)I

    .line 796
    invoke-static {p0, p3}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;->access$502(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;F)F

    return-void
.end method

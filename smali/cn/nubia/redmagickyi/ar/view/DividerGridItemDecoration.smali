.class public Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DividerGridItemDecoration.java"


# static fields
.field private static final ATTRS:[I


# instance fields
.field private lineWidth:I

.field private mDivider:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010214

    .line 18
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    const-string v0, "#cccccc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->lineWidth:I

    .line 29
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->lineWidth:I

    .line 23
    sget-object v0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->ATTRS:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 45
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 46
    instance-of p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p1, :cond_0

    .line 48
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    goto :goto_0

    .line 49
    :cond_0
    instance-of p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_1

    .line 50
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private isLastColum(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .locals 1

    .line 89
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 90
    instance-of p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    add-int/2addr p2, v0

    .line 91
    rem-int/2addr p2, p3

    if-nez p2, :cond_2

    return v0

    .line 95
    :cond_0
    instance-of p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_2

    .line 96
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 97
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p0

    if-ne p0, v0, :cond_1

    add-int/2addr p2, v0

    .line 99
    rem-int/2addr p2, p3

    if-nez p2, :cond_2

    return v0

    .line 104
    :cond_1
    rem-int p0, p4, p3

    sub-int/2addr p4, p0

    if-lt p2, p4, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isLastRaw(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .locals 1

    .line 115
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 116
    instance-of p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 117
    rem-int p0, p4, p3

    sub-int/2addr p4, p0

    if-lt p2, p4, :cond_2

    return v0

    .line 122
    :cond_0
    instance-of p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_2

    .line 123
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 124
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p0

    if-ne p0, v0, :cond_1

    .line 127
    rem-int p0, p4, p3

    sub-int/2addr p4, p0

    if-lt p2, p4, :cond_2

    return v0

    :cond_1
    add-int/2addr p2, v0

    .line 136
    rem-int/2addr p2, p3

    if-nez p2, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 57
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 59
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getMarginStart()I

    move-result v5

    sub-int/2addr v4, v5

    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->lineWidth:I

    add-int/2addr v5, v6

    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 66
    iget v3, p0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->lineWidth:I

    add-int/2addr v3, v2

    .line 67
    iget-object v6, p0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 73
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 75
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 81
    iget v3, p0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->lineWidth:I

    add-int/2addr v3, v2

    .line 83
    iget-object v6, p0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 147
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    .line 149
    invoke-direct {p0, p3}, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 150
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    const/4 p2, 0x0

    .line 164
    iget p0, p0, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->lineWidth:I

    invoke-virtual {p1, p2, p2, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 39
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/ar/view/DividerGridItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;
.super Ljava/lang/Object;
.source "ViewStickyUtil.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentInsets:I

.field private mChildOfContent:Landroid/view/View;

.field private mInputView:Landroid/view/View;

.field private mInputViewMarginBottom:I

.field private mUsableHeightPrevious:Ljava/lang/Integer;

.field private params:Landroid/view/ViewGroup$MarginLayoutParams;

.field private statusBarHeight:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->currentInsets:I

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->activity:Landroid/app/Activity;

    const v1, 0x1020002

    .line 38
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 39
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mChildOfContent:Landroid/view/View;

    .line 40
    invoke-static {}, Lcn/nubia/redmagickyi/util/PlatformUtils;->isHardWareVendorMediaTek()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/PlatformUtils;->isHardWareVendorSprd()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "789"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mChildOfContent:Landroid/view/View;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 94
    :goto_1
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mInputView:Landroid/view/View;

    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 96
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mInputViewMarginBottom:I

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "status_bar_height"

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->statusBarHeight:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;)I
    .locals 0

    .line 21
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->currentInsets:I

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->currentInsets:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;Ljava/lang/Integer;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->possiblyResizeChildOfContentForNeoApp(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;)Ljava/lang/Integer;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->computeUsableHeight()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;Ljava/lang/Integer;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->possiblyResizeChildOfContent(Ljava/lang/Integer;)V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;Landroid/view/View;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;
    .locals 1

    .line 24
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-object v0
.end method

.method private computeUsableHeight()Ljava/lang/Integer;
    .locals 1

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 152
    iget p0, v0, Landroid/graphics/Rect;->top:I

    if-lez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 155
    :cond_0
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private possiblyResizeChildOfContent(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mInputView:Landroid/view/View;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/InputMethodUtils;->hideInputMethod(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mInputViewMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mUsableHeightPrevious:Ljava/lang/Integer;

    if-eq p1, v0, :cond_2

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 134
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v0, v1

    .line 135
    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mInputViewMarginBottom:I

    .line 137
    div-int/lit8 v0, v0, 0x4

    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 140
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 142
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mInputView:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mUsableHeightPrevious:Ljava/lang/Integer;

    return-void
.end method

.method private possiblyResizeChildOfContentForNeoApp(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mInputViewMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mUsableHeightPrevious:Ljava/lang/Integer;

    if-eq p1, v0, :cond_2

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 113
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 114
    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mInputViewMarginBottom:I

    .line 116
    div-int/lit8 v0, v0, 0x4

    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 119
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 121
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mInputView:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mUsableHeightPrevious:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public setInputViewMarginBottom(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->mInputViewMarginBottom:I

    return-void
.end method

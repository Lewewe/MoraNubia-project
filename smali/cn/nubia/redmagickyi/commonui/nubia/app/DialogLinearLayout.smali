.class public Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DialogLinearLayout.java"


# instance fields
.field private mMaxHeight:F

.field private mMaxHeightRatio:F

.field private mSplitMaxHeight:F

.field private mWindowManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3f4ccccd    # 0.8f

    .line 34
    iput p3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->mMaxHeightRatio:F

    .line 36
    const-string p3, "getWindowManagerService"

    const/4 v0, 0x1

    const-string v1, "android.view.WindowManagerGlobal"

    invoke-static {v1, p3, v0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->mWindowManager:Ljava/lang/Object;

    .line 38
    sget-object p3, Lcn/nubia/redmagickyi/main/R$styleable;->nubiaDialogLinearLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 41
    :try_start_0
    sget p3, Lcn/nubia/redmagickyi/main/R$styleable;->nubiaDialogLinearLayout_maxHeightRatio:I

    iget v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->mMaxHeightRatio:F

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->mMaxHeightRatio:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    :cond_0
    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 45
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_center_dialog_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->mSplitMaxHeight:F

    return-void
.end method

.method private getAbsScreenWidth()I
    .locals 1

    .line 97
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 100
    iget p0, v0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method private getDensity()I
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 105
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 p0, p0, 0xa0

    return p0
.end method

.method private getScreenHeight(Landroid/content/Context;)I
    .locals 0

    .line 87
    const-string/jumbo p0, "window"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 88
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    return p0
.end method

.method private getScreenWidth(Landroid/content/Context;)I
    .locals 0

    .line 92
    const-string/jumbo p0, "window"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 93
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    return p0
.end method

.method private isLandScreen()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 60
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 61
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->getAbsScreenWidth()I

    move-result v1

    .line 63
    iget v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->mMaxHeightRatio:F

    int-to-float v0, v0

    mul-float/2addr v2, v0

    .line 64
    iget v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->mSplitMaxHeight:F

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    move v2, v0

    :cond_0
    iput v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->mMaxHeight:F

    .line 66
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 67
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 68
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le p1, v1, :cond_1

    .line 72
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->getDensity()I

    move-result p1

    mul-int/lit8 p1, p1, 0x14

    sub-int p1, v1, p1

    :cond_1
    int-to-float v1, p2

    .line 75
    iget v3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->mMaxHeight:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    float-to-int p2, v3

    .line 76
    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 77
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setMaxHeightRatio(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 54
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->mMaxHeightRatio:F

    :cond_0
    return-void
.end method

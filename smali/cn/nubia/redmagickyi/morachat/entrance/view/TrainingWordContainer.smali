.class public Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;
.super Landroid/widget/LinearLayout;
.source "TrainingWordContainer.java"


# static fields
.field private static final START_RECORDING_DELAY_OK:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "TrainingWordContainer"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private bottomMarginDefault:I

.field private bottomMarginFocus:I

.field private curToB:Landroid/widget/FrameLayout;

.field private curToS:Landroid/widget/FrameLayout;

.field private heightDefault:F

.field private heightFocus:F

.field private shakeAnimation:Landroid/view/animation/Animation;

.field private textSizeDefault:F

.field private textSizeFocus:F

.field private times:I

.field private topMarginDefault:I

.field private topMarginFocus:I

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->times:I

    .line 41
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->times:I

    .line 46
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->times:I

    .line 51
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->times:I

    .line 56
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->curToB:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;FLandroid/widget/FrameLayout;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->onAnimating(FLandroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->curToS:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;ZLandroid/widget/FrameLayout;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->setItemState(ZLandroid/widget/FrameLayout;)V

    return-void
.end method

.method private getFocusedText(Landroid/widget/FrameLayout;)Landroid/widget/TextView;
    .locals 0

    const/4 p0, 0x1

    .line 245
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private getIndex(Landroid/widget/FrameLayout;)I
    .locals 0

    .line 249
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getUnFocusedText(Landroid/widget/FrameLayout;)Landroid/widget/TextView;
    .locals 0

    const/4 p0, 0x0

    .line 241
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->setGravity(I)V

    .line 61
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->setOrientation(I)V

    .line 62
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_48_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->heightFocus:F

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_26_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->heightDefault:F

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->topMarginFocus:I

    .line 65
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->topMarginDefault:I

    .line 66
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->bottomMarginFocus:I

    .line 67
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->bottomMarginDefault:I

    .line 68
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_40_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->textSizeFocus:F

    .line 69
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_20_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->textSizeDefault:F

    .line 70
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->shake:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->shakeAnimation:Landroid/view/animation/Animation;

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->animator:Landroid/animation/ValueAnimator;

    .line 72
    new-instance v1, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer$1;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer$2;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    const-string p0, "TrainingWordContainer"

    const-string v0, "init"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private onAnimating(FLandroid/widget/FrameLayout;)V
    .locals 6

    if-eqz p2, :cond_4

    .line 108
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getIndex(Landroid/widget/FrameLayout;)I

    move-result v0

    .line 109
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getUnFocusedText(Landroid/widget/FrameLayout;)Landroid/widget/TextView;

    move-result-object v1

    .line 110
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getFocusedText(Landroid/widget/FrameLayout;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    .line 112
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 113
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 115
    iget v3, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->textSizeDefault:F

    iget v4, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->textSizeFocus:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    const/4 v4, 0x0

    .line 116
    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 119
    :cond_0
    iget v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->topMarginDefault:I

    int-to-float v2, v2

    :goto_0
    if-nez v0, :cond_1

    move v3, v1

    goto :goto_1

    .line 120
    :cond_1
    iget v3, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->topMarginFocus:I

    int-to-float v3, v3

    .line 121
    :goto_1
    iget v4, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->times:I

    add-int/lit8 v5, v4, -0x1

    if-ne v0, v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    iget v5, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->bottomMarginDefault:I

    int-to-float v5, v5

    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_3

    goto :goto_3

    .line 122
    :cond_3
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->bottomMarginFocus:I

    int-to-float v1, v0

    :goto_3
    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    sub-float/2addr v1, v5

    mul-float/2addr v1, p1

    add-float/2addr v5, v1

    .line 125
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 126
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->heightDefault:F

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->heightFocus:F

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    float-to-int p0, v1

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    float-to-int p0, v2

    .line 127
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    float-to-int p0, v5

    .line 128
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 129
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method private setItemState(ZLandroid/widget/FrameLayout;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getIndex(Landroid/widget/FrameLayout;)I

    move-result v0

    .line 215
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getUnFocusedText(Landroid/widget/FrameLayout;)Landroid/widget/TextView;

    move-result-object v1

    .line 216
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getFocusedText(Landroid/widget/FrameLayout;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    .line 218
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 219
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 220
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->textSizeFocus:F

    invoke-virtual {v1, v5, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 221
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->textSizeFocus:F

    invoke-virtual {v2, v5, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 222
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 223
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->heightFocus:F

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_1

    move v1, v5

    goto :goto_0

    .line 224
    :cond_1
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->topMarginFocus:I

    :goto_0
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 225
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->times:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget v5, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->bottomMarginFocus:I

    :goto_1
    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 226
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 228
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 229
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 230
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->textSizeDefault:F

    invoke-virtual {v1, v5, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 231
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->textSizeDefault:F

    invoke-virtual {v2, v5, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 233
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->heightDefault:F

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_4

    move v1, v5

    goto :goto_2

    .line 234
    :cond_4
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->topMarginDefault:I

    :goto_2
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 235
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->times:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    iget v5, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->bottomMarginDefault:I

    :goto_3
    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 236
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    return-void
.end method

.method private startChangeAnimation()V
    .locals 2

    .line 134
    const-string v0, "TrainingWordContainer"

    const-string v1, "startChangeAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateItems(I)V
    .locals 4

    if-ltz p1, :cond_3

    .line 192
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 193
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->viewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-nez p1, :cond_1

    if-ne v1, p1, :cond_0

    .line 196
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->viewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->setItemState(ZLandroid/widget/FrameLayout;)V

    goto :goto_1

    .line 198
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->viewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->setItemState(ZLandroid/widget/FrameLayout;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    .line 203
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->viewList:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->curToS:Landroid/widget/FrameLayout;

    .line 204
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->viewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->curToB:Landroid/widget/FrameLayout;

    .line 205
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->startChangeAnimation()V

    :cond_3
    return-void
.end method


# virtual methods
.method public moveToNext(I)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->updateItems(I)V

    return-void
.end method

.method public onCurrentError(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->viewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 187
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->shakeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 138
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->animator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public setRecordTimesAndWord(ILjava/lang/String;)V
    .locals 6

    .line 144
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->times:I

    if-eq v0, p1, :cond_2

    .line 145
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->times:I

    .line 146
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->word:Ljava/lang/String;

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->times:I

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->viewList:Ljava/util/List;

    const/4 p1, 0x0

    move p2, p1

    .line 148
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->times:I

    if-ge p2, v0, :cond_2

    .line 149
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 151
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->heightDefault:F

    float-to-int v2, v2

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    if-nez p2, :cond_0

    move v2, p1

    goto :goto_1

    .line 152
    :cond_0
    iget v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->topMarginDefault:I

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 153
    iget v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->times:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    if-ne p2, v2, :cond_1

    move v2, p1

    goto :goto_2

    :cond_1
    iget v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->bottomMarginDefault:I

    :goto_2
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 154
    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->viewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setUseDefaultFontTypeface(Z)V

    .line 159
    iget v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->textSizeDefault:F

    invoke-virtual {v1, p1, v2}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setTextSize(IF)V

    .line 160
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->word:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 162
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v1, Lcn/nubia/redmagickyi/view/StrokeTextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setUseDefaultFontTypeface(Z)V

    .line 167
    iget v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->textSizeDefault:F

    invoke-virtual {v1, p1, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setTextSize(IF)V

    .line 168
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->word:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setShadowX(F)V

    .line 170
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setShadowY(F)V

    .line 171
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$color;->purple_D94E3DA5:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setShadowColor(I)V

    .line 172
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$color;->purple_FF7976FC:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setStrokeColor(I)V

    .line 173
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 174
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.class public Lcn/nubia/redmagickyi/guide/view/GuideSwitch;
.super Landroid/widget/CompoundButton;
.source "GuideSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/guide/view/GuideSwitch$OnTouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GuideSwitch"

.field private static final THUMB_EDGE_END:I = 0x2

.field private static final THUMB_EDGE_NONE:I = 0x3

.field private static final THUMB_EDGE_START:I = 0x1

.field private static final THUMB_POS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcn/nubia/redmagickyi/guide/view/GuideSwitch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mIsThumbPostionChanged:Ljava/lang/Boolean;

.field private mOnTouchListener:Lcn/nubia/redmagickyi/guide/view/GuideSwitch$OnTouchListener;

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mSwitchHeight:I

.field private mSwitchWidth:I

.field private mThumbEdge:I

.field private mThumbOffBitmap:Landroid/graphics/Bitmap;

.field private mThumbOffPaint:Landroid/graphics/Paint;

.field private mThumbOnBitmap:Landroid/graphics/Bitmap;

.field private mThumbOnPaint:Landroid/graphics/Paint;

.field private mThumbPosition:F

.field private mTouchX:F

.field private mTrackBitmap:Landroid/graphics/Bitmap;

.field private mTrackPaint:Landroid/graphics/Paint;

.field private final translateOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 246
    new-instance v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch$1;

    const-string v1, "thumbPos"

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->THUMB_POS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x3

    .line 36
    iput p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbEdge:I

    .line 40
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->redmagickyi_custom_switch_translate_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->translateOffset:I

    .line 56
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->preloadResource()V

    .line 57
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;)F
    .locals 0

    .line 26
    iget p0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbPosition:F

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;F)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setThumbPosition(F)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 239
    :goto_0
    sget-object v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->THUMB_POS:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    .line 240
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 241
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 243
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 0

    .line 232
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private getThumbOffset()F
    .locals 0

    .line 228
    iget p0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbPosition:F

    return p0
.end method

.method private preloadResource()V
    .locals 4

    .line 61
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->switch_off_bg:I

    const/4 v2, 0x0

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->switch_on_bg:I

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbOnBitmap:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->switch_off_bg:I

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbOffBitmap:Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->switchbtn_slider:I

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mTrackBitmap:Landroid/graphics/Bitmap;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbOnPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbOffPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mTrackPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V
    .locals 1

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 198
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private setThumbPosition(F)V
    .locals 0

    .line 223
    iput p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbPosition:F

    .line 224
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0, p0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mOnTouchListener:Lcn/nubia/redmagickyi/guide/view/GuideSwitch$OnTouchListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getCompoundPaddingLeft()I
    .locals 0

    .line 90
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result p0

    return p0
.end method

.method public getCompoundPaddingRight()I
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget p0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mSwitchWidth:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 204
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbOnBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbOffBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mTrackBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->translateOffset:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getThumbOffset()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mSwitchWidth:I

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mSwitchHeight:I

    .line 79
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 81
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 84
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getMeasuredWidthAndState()I

    move-result p1

    iget p2, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mSwitchHeight:I

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 128
    const-string v1, "GuideSwitch"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_9

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_6

    goto/16 :goto_4

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 146
    iget v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->translateOffset:I

    .line 147
    iget v1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mTouchX:F

    sub-float/2addr p1, v1

    .line 148
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mIsThumbPostionChanged:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 151
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mIsThumbPostionChanged:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 152
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mIsThumbPostionChanged:Ljava/lang/Boolean;

    .line 155
    :cond_2
    iget v1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbEdge:I

    if-ne v1, v5, :cond_3

    cmpg-float v2, p1, v7

    if-gtz v2, :cond_3

    .line 157
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mIsThumbPostionChanged:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v1, v4, :cond_4

    cmpl-float v1, p1, v7

    if-ltz v1, :cond_4

    .line 161
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mIsThumbPostionChanged:Ljava/lang/Boolean;

    move v7, v2

    goto :goto_0

    .line 164
    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 165
    iget v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbEdge:I

    if-ne v0, v4, :cond_5

    sub-float p1, v2, p1

    :cond_5
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 167
    :goto_0
    iget p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbPosition:F

    invoke-static {v7, p1}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result p1

    if-nez p1, :cond_c

    .line 168
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mIsThumbPostionChanged:Ljava/lang/Boolean;

    .line 169
    invoke-direct {p0, v7}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setThumbPosition(F)V

    goto/16 :goto_4

    .line 176
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "switch touch up, is thumb position changed? "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mIsThumbPostionChanged:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mIsThumbPostionChanged:Ljava/lang/Boolean;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 178
    iget p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbPosition:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_7

    move p1, v5

    goto :goto_1

    :cond_7
    move p1, v6

    :goto_1
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    goto :goto_2

    .line 180
    :cond_8
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 182
    :goto_2
    invoke-virtual {p0, v6}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setPressed(Z)V

    .line 183
    iput v7, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mTouchX:F

    .line 184
    iput-object v2, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mIsThumbPostionChanged:Ljava/lang/Boolean;

    goto :goto_4

    .line 130
    :cond_9
    invoke-virtual {p0, v5}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setPressed(Z)V

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mTouchX:F

    .line 132
    iput-object v2, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mIsThumbPostionChanged:Ljava/lang/Boolean;

    .line 133
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 134
    iput v4, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbEdge:I

    goto :goto_3

    .line 135
    :cond_a
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_b

    .line 136
    iput v5, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbEdge:I

    goto :goto_3

    .line 138
    :cond_b
    iput v3, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbEdge:I

    .line 140
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "switch touch down, now edge is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mThumbEdge:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    return v5
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 105
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isLaidOut()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->animateThumbToCheckedState(Z)V

    goto :goto_1

    .line 109
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->cancelPositionAnimator()V

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 110
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setThumbPosition(F)V

    :goto_1
    return-void
.end method

.method public setOnTouchListener(Lcn/nubia/redmagickyi/guide/view/GuideSwitch$OnTouchListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->mOnTouchListener:Lcn/nubia/redmagickyi/guide/view/GuideSwitch$OnTouchListener;

    return-void
.end method

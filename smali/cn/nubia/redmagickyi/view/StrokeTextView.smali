.class public Lcn/nubia/redmagickyi/view/StrokeTextView;
.super Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;
.source "StrokeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/StrokeTextView$StrokeTextPaint;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StrokeTextView"


# instance fields
.field private rotation:Ljava/lang/Float;

.field private shadowColor:I

.field private shadowX:F

.field private shadowY:F

.field private strokeColor:I

.field private strokeWidth:F

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowX:F

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowY:F

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FF867AF7:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowColor:I

    .line 32
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeWidth:F

    .line 33
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FFB0A0F8:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeColor:I

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->textColor:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->rotation:Ljava/lang/Float;

    .line 40
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowX:F

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowY:F

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FF867AF7:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowColor:I

    .line 32
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeWidth:F

    .line 33
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FFB0A0F8:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeColor:I

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->textColor:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->rotation:Ljava/lang/Float;

    .line 45
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowX:F

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowY:F

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->purple_FF867AF7:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowColor:I

    .line 32
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeWidth:F

    .line 33
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->purple_FFB0A0F8:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeColor:I

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->textColor:I

    const/4 p3, 0x0

    .line 36
    iput-object p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->rotation:Ljava/lang/Float;

    .line 50
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowX:F

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowY:F

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcn/nubia/redmagickyi/main/R$color;->purple_FF867AF7:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowColor:I

    .line 32
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeWidth:F

    .line 33
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcn/nubia/redmagickyi/main/R$color;->purple_FFB0A0F8:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeColor:I

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->textColor:I

    const/4 p3, 0x0

    .line 36
    iput-object p3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->rotation:Ljava/lang/Float;

    .line 55
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getTextViewHeight()I
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 191
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getCompoundPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getCompoundPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method private hookTextPaint()V
    .locals 3

    .line 91
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mTextPaint"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 93
    new-instance v1, Lcn/nubia/redmagickyi/view/StrokeTextView$StrokeTextPaint;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView$StrokeTextPaint;-><init>(Lcn/nubia/redmagickyi/view/StrokeTextView;Landroid/graphics/Paint;)V

    .line 94
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 60
    sget-object v0, Lcn/nubia/redmagickyi/main/R$styleable;->StrokeTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 61
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->StrokeTextView_shadowX:I

    iget v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowX:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowX:F

    .line 62
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->StrokeTextView_shadowY:I

    iget v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowY:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowY:F

    .line 63
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->StrokeTextView_shadowColor:I

    iget v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowColor:I

    .line 64
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->StrokeTextView_strokeWidth:I

    iget v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeWidth:F

    .line 65
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->StrokeTextView_strokeColor:I

    iget v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeColor:I

    .line 66
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->StrokeTextView_realTextColor:I

    iget v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->textColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->textColor:I

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->isOriginSingleLine()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setMarqueeAble(Z)V

    .line 70
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->initPadding()V

    .line 71
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->hookTextPaint()V

    return-void
.end method

.method private initPadding()V
    .locals 5

    .line 76
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaddingStart()I

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaddingStart()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaddingRight()I

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaddingRight()I

    move-result v1

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaddingEnd()I

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaddingEnd()I

    move-result v1

    .line 86
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaddingTop()I

    move-result v2

    int-to-float v1, v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowX:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowY:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v0, v2, v1, v3}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 198
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/view/StrokeTextView$StrokeTextPaint;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/StrokeTextView$StrokeTextPaint;

    iget v1, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeColor:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/StrokeTextView$StrokeTextPaint;->setRealColor(I)V

    goto :goto_0

    .line 201
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeColor:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setTextColor(I)V

    .line 203
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 204
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 206
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 208
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/view/StrokeTextView$StrokeTextPaint;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/StrokeTextView$StrokeTextPaint;

    iget v1, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->textColor:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/StrokeTextView$StrokeTextPaint;->setRealColor(I)V

    goto :goto_1

    .line 211
    :cond_1
    iget v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->textColor:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setTextColor(I)V

    .line 213
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 214
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isTextRtl(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowX:F

    neg-float v1, v1

    goto :goto_2

    :cond_2
    iget v1, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowX:F

    :goto_2
    iget v2, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowY:F

    iget v3, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowColor:I

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 217
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 185
    invoke-super/range {p0 .. p5}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 175
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->onMeasure(II)V

    .line 176
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getMeasuredHeight()I

    move-result p1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getTextViewHeight()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    .line 177
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setMarqueeAble(Z)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getMeasuredHeight()I

    move-result p1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getTextViewHeight()I

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, 0x0

    .line 179
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setMarqueeAble(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setGravity(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMarqueeAble(Z)V
    .locals 1

    .line 161
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setMarqueeAble(Z)V

    .line 162
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->rotation:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getRotation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->rotation:Ljava/lang/Float;

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 167
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setRotation(F)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->rotation:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setRotation(F)V

    :goto_0
    return-void
.end method

.method public setRealTextColor(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->textColor:I

    .line 126
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->invalidate()V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowColor:I

    .line 116
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->invalidate()V

    return-void
.end method

.method public setShadowX(F)V
    .locals 0

    .line 103
    iput p1, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowX:F

    .line 104
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->initPadding()V

    .line 105
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->invalidate()V

    return-void
.end method

.method public setShadowY(F)V
    .locals 0

    .line 109
    iput p1, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->shadowY:F

    .line 110
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->initPadding()V

    .line 111
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcn/nubia/redmagickyi/view/StrokeTextView;->strokeColor:I

    .line 121
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/StrokeTextView;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 156
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.class public Lcn/nubia/redmagickyi/mainpage/main/view/GradientTextView;
.super Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;
.source "GradientTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initShader()V
    .locals 10

    .line 40
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/GradientTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FFBEB7F6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/GradientTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->purple_FFECD8FD:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v7

    const/4 v0, 0x2

    .line 41
    new-array v8, v0, [F

    fill-array-data v8, :array_0

    .line 42
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/GradientTextView;->getWidth()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/GradientTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->onSizeChanged(IIII)V

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/GradientTextView;->initShader()V

    return-void
.end method

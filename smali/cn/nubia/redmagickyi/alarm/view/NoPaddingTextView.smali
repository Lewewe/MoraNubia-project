.class public Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "NoPaddingTextView.java"


# instance fields
.field private minRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 51
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->minRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 53
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->minRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->getCurrentTextColor()I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    neg-int p0, v1

    int-to-float p0, p0

    neg-int v1, v2

    int-to-float v1, v1

    .line 60
    invoke-virtual {p1, v0, p0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 38
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->minRect:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->minRect:Landroid/graphics/Rect;

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->minRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 44
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->minRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 45
    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->minRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 46
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/view/NoPaddingTextView;->setMeasuredDimension(II)V

    return-void
.end method

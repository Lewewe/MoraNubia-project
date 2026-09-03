.class public Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;
.super Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;
.source "SettingsOtherItemLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoSizeTextView"
.end annotation


# instance fields
.field private isEnableAutoSize:Z

.field private isHeightExactly:Z

.field private isWidthExactly:Z

.field private maxTextSize:F

.field private minTextSize:F

.field private performResize:Z

.field private subPaint:Landroid/graphics/Paint;

.field private titlePaint:Landroid/graphics/Paint;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->isEnableAutoSize:Z

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->performResize:Z

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->initialise(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->isEnableAutoSize:Z

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->performResize:Z

    .line 81
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->initialise(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 70
    iput-boolean p3, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->isEnableAutoSize:Z

    const/4 p3, 0x1

    .line 71
    iput-boolean p3, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->performResize:Z

    .line 86
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->initialise(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 70
    iput-boolean p3, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->isEnableAutoSize:Z

    const/4 p3, 0x1

    .line 71
    iput-boolean p3, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->performResize:Z

    .line 91
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->initialise(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialise(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 96
    sget-object v0, Lcn/nubia/redmagickyi/main/R$styleable;->AutoSizeTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 97
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->AutoSizeTextView_enableAutoSize:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->isEnableAutoSize:Z

    .line 98
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->AutoSizeTextView_minTextSize:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->minTextSize:F

    .line 99
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->AutoSizeTextView_maxTextSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->maxTextSize:F

    .line 100
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->subPaint:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    return-void
.end method

.method private reSizeText(Ljava/lang/CharSequence;)V
    .locals 7

    if-eqz p1, :cond_8

    .line 148
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->performResize:Z

    if-eqz v0, :cond_8

    .line 149
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->isEnableAutoSize:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->maxTextSize:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 151
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->isWidthExactly:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getMeasuredWidthAndState()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getPaddingStart()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto/16 :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidthAndState()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    .line 157
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 158
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->titlePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v4, v5, v1, v6, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 159
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->titlePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 160
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 161
    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 162
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 163
    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getPaddingStart()I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getPaddingEnd()I

    move-result v3

    add-int/2addr v4, v3

    int-to-float v3, v4

    sub-float/2addr v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 167
    :goto_0
    iget-boolean v3, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->isHeightExactly:Z

    if-eqz v3, :cond_2

    .line 168
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getMeasuredHeightAndState()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 172
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeightAndState()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    .line 173
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 174
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v5, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v5, v4

    int-to-float v4, v5

    sub-float/2addr v3, v4

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    cmpl-float v4, v0, v2

    if-lez v4, :cond_8

    cmpl-float v2, v3, v2

    if-lez v2, :cond_8

    .line 178
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->performResize:Z

    .line 179
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 180
    iget v4, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->maxTextSize:F

    .line 181
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->subPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 182
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->subPaint:Landroid/graphics/Paint;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 183
    :goto_2
    iget v5, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->minTextSize:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->subPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpl-float v5, v5, v0

    if-gtz v5, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_6

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    .line 185
    iget v5, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->minTextSize:F

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_5

    move v4, v5

    goto :goto_3

    .line 189
    :cond_5
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->subPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 190
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 191
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->subPaint:Landroid/graphics/Paint;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    goto :goto_2

    .line 193
    :cond_6
    :goto_3
    invoke-virtual {p0, v1, v4}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->setTextSize(IF)V

    goto :goto_4

    .line 196
    :cond_7
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->performResize:Z

    .line 197
    iget p1, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->maxTextSize:F

    invoke-virtual {p0, v1, p1}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->setTextSize(IF)V

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public bindTitleView(Landroid/widget/TextView;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->tvTitle:Landroid/widget/TextView;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->titlePaint:Landroid/graphics/Paint;

    .line 109
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 137
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->reSizeText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 129
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->onMeasure(II)V

    .line 130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v2, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->isWidthExactly:Z

    .line 131
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-ne v2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->isHeightExactly:Z

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 p2, 0x1

    .line 143
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->performResize:Z

    .line 144
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->reSizeText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnableAutoSize(Z)V
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->isEnableAutoSize:Z

    if-eq v0, p1, :cond_0

    .line 121
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->isEnableAutoSize:Z

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->performResize:Z

    .line 123
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->reSizeText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

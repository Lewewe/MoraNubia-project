.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/MarqueeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MarqueeTextView.java"


# instance fields
.field private mIsInitTextPadding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/MarqueeTextView;->mIsInitTextPadding:Z

    .line 21
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/MarqueeTextView;->setSingleLine()V

    .line 22
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/MarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, -0x1

    .line 23
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/MarqueeTextView;->setMarqueeRepeatLimit(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 28
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/MarqueeTextView;->mIsInitTextPadding:Z

    if-nez v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/MarqueeTextView;->getBaseline()I

    move-result v0

    .line 30
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/MarqueeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v1, v1, v1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/MarqueeTextView;->setPadding(IIII)V

    :cond_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/MarqueeTextView;->mIsInitTextPadding:Z

    .line 36
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

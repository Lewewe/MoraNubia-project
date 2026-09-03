.class public Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;
.super Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;
.source "MarqueeTextView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/MarqueeView/IMarquee;


# instance fields
.field private isOriginSingleLine:Ljava/lang/Boolean;

.field private marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->updateMarqueeState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->updateMarqueeState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->updateMarqueeState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->updateMarqueeState()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;)Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    return-object p0
.end method

.method private checkIfControllerNonNull()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    :cond_0
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 101
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->checkIfControllerNonNull()V

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->invalidate()V

    .line 103
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->invalidate()V

    return-void
.end method

.method public isFocused()Z
    .locals 1

    .line 89
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->checkIfControllerNonNull()V

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMarqueeAble()Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->checkIfControllerNonNull()V

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->isMarqueeAble()Z

    move-result p0

    return p0
.end method

.method public isOriginSingleLine()Ljava/lang/Boolean;
    .locals 0

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->isOriginSingleLine:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->onAttachedToWindow()V

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->onDetachedFromWindow()V

    .line 84
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->onSizeChanged(IIII)V

    .line 96
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->updateMarqueeState()V

    return-void
.end method

.method public setMarqueeAble(Z)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->checkIfControllerNonNull()V

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->setMarqueeAble(Z)V

    .line 38
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->updateMarqueeState()V

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->checkIfControllerNonNull()V

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->setMarqueeRepeatLimit(I)V

    .line 61
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setMarqueeRepeatLimit(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 67
    new-instance p1, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView$1;-><init>(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateMarqueeState()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->checkIfControllerNonNull()V

    .line 50
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->bindView(Landroid/widget/TextView;)V

    .line 51
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->isOriginSingleLine:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->isSingleLine()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->isOriginSingleLine:Ljava/lang/Boolean;

    .line 54
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->updateMarqueeState()V

    return-void
.end method

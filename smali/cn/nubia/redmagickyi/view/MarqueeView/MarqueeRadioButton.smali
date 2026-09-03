.class public Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;
.super Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRadioButton;
.source "MarqueeRadioButton.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/MarqueeView/IMarquee;


# instance fields
.field private marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRadioButton;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance p1, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    .line 12
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->updateMarqueeState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p1, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    .line 17
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->updateMarqueeState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    .line 22
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->updateMarqueeState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 9
    new-instance p1, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    .line 27
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->updateMarqueeState()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;)Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;
    .locals 0

    .line 8
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    return-object p0
.end method

.method private checkIfControllerNonNull()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    :cond_0
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->checkIfControllerNonNull()V

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->invalidate()V

    .line 96
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRadioButton;->invalidate()V

    return-void
.end method

.method public isFocused()Z
    .locals 1

    .line 82
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->checkIfControllerNonNull()V

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRadioButton;->isFocused()Z

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

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->checkIfControllerNonNull()V

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->isMarqueeAble()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 70
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRadioButton;->onAttachedToWindow()V

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->onDetachedFromWindow()V

    .line 77
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRadioButton;->onDetachedFromWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRadioButton;->onSizeChanged(IIII)V

    .line 89
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->updateMarqueeState()V

    return-void
.end method

.method public setMarqueeAble(Z)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->checkIfControllerNonNull()V

    .line 33
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->setMarqueeAble(Z)V

    .line 34
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->updateMarqueeState()V

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->checkIfControllerNonNull()V

    .line 53
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->setMarqueeRepeatLimit(I)V

    .line 54
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRadioButton;->setMarqueeRepeatLimit(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRadioButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 60
    new-instance p1, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton$1;-><init>(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateMarqueeState()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->checkIfControllerNonNull()V

    .line 46
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->bindView(Landroid/widget/TextView;)V

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeRadioButton;->marqueeController:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->updateMarqueeState()V

    return-void
.end method

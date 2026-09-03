.class Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;
.super Ljava/lang/Object;
.source "MarqueeController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/MarqueeView/IMarquee;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# static fields
.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B = 0x0t

.field private static SINGLE_LINE:I = 0x1


# instance fields
.field private mLastFullyClipped:Ljava/lang/Boolean;

.field private mMarqueeRepeatLimitCount:I

.field private final mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final mVisibleRect:Landroid/graphics/Rect;

.field private marqueeAble:Z

.field private marqueeObj:Ljava/lang/Object;

.field private marqueeRepeatLimitField:Ljava/lang/reflect/Field;

.field private owner:Landroidx/lifecycle/LifecycleOwner;

.field private restartFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->marqueeAble:Z

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mMarqueeRepeatLimitCount:I

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->restartFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance v0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$2;-><init>(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->marqueeObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->marqueeObj:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;)Landroid/widget/TextView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;)Ljava/lang/reflect/Field;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->marqueeRepeatLimitField:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->marqueeRepeatLimitField:Ljava/lang/reflect/Field;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->checkClip()V

    return-void
.end method

.method private checkClip()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 143
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mLastFullyClipped:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, v0, :cond_3

    .line 145
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mLastFullyClipped:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 148
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->restartMarquee(Z)V

    :cond_3
    return-void
.end method

.method private isMarqueeEnd()Z
    .locals 2

    const/4 v0, 0x0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->marqueeRepeatLimitField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->marqueeObj:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public bindView(Landroid/widget/TextView;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    return-void
.end method

.method public invalidate()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->marqueeAble:Z

    if-eqz v1, :cond_2

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->restartFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->isMarqueeEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 93
    :cond_2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 95
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->restartFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public isFocused()Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->marqueeAble:Z

    return p0
.end method

.method public isMarqueeAble()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->marqueeAble:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->owner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$3;-><init>(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->owner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->owner:Landroidx/lifecycle/LifecycleOwner;

    .line 128
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->restartMarquee(Z)V

    return-void
.end method

.method public restartMarquee(Z)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mMarqueeRepeatLimitCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-nez p1, :cond_1

    .line 167
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->isMarqueeEnd()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 169
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 173
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->restartFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 174
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setMarqueeAble(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->marqueeAble:Z

    .line 38
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->updateMarqueeState()V

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mMarqueeRepeatLimitCount:I

    return-void
.end method

.method public updateMarqueeState()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->marqueeAble:Z

    if-eqz v1, :cond_1

    .line 52
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 53
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 54
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    sget v1, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->SINGLE_LINE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->mMarqueeRepeatLimitCount:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->textView:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$1;-><init>(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 74
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    :goto_0
    return-void
.end method
